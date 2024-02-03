import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GoogleAdsService {
  int _lastShowInterstitialAds = 0;
  late final AdRequest _requestGoogleAds;
  GoogleAdsService({
    required String interstitialAdUnitIdAndroid,
    required String interstitialAdUnitIdIOS,
    required String bannerAdUnitIdAndroid,
    required String bannerAdUnitIdIOS,
    required List<String> requestGoogleAdsKeywords,
  }) {
    MobileAds.instance.initialize();

    _requestGoogleAds = AdRequest(
      keywords: requestGoogleAdsKeywords,
      nonPersonalizedAds: false,
    );
    _interstitialAdUnitId = Platform.isAndroid
        ? interstitialAdUnitIdAndroid
        : interstitialAdUnitIdIOS;
    _bannerAdUnitIdAdUnitId =
        Platform.isAndroid ? bannerAdUnitIdAndroid : bannerAdUnitIdIOS;
    _loadInterstitialAd();
    _loadBannerAd();
  }

  InterstitialAd? _interstitialAd;
  late final String _interstitialAdUnitId;

  /// Loads an interstitial ads.
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: _interstitialAdUnitId,
      request: _requestGoogleAds,
      adLoadCallback: InterstitialAdLoadCallback(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          ad.fullScreenContentCallback = FullScreenContentCallback(
            // Called when the ad showed the full screen content.
            onAdShowedFullScreenContent: (ad) {},
            // Called when an impression occurs on the ad.
            onAdImpression: (ad) {},
            // Called when the ad failed to show full screen content.
            onAdFailedToShowFullScreenContent: (ad, err) {
              // Dispose the ad here to free resources.
              ad.dispose();
            },
            // Called when the ad dismissed full screen content.
            onAdDismissedFullScreenContent: (ad) {
              // Dispose the ad here to free resources.
              ad.dispose();
              _loadInterstitialAd();
            },
            // Called when a click is recorded for an ad.
            onAdClicked: (ad) {},
          );
          // Keep a reference to the ad so you can show it later.
          _interstitialAd = ad;
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint('InterstitialAd failed to load: $error');
        },
      ),
    );
  }

  loadInterstitialAds({VoidCallback? beforeStart, int gapInSecond = 0}) {
    if (DateTime.now().millisecondsSinceEpoch - _lastShowInterstitialAds >
        (gapInSecond * 1000)) {
      if (beforeStart != null) {
        beforeStart();
      }
      _interstitialAd?.show();
      _lastShowInterstitialAds = DateTime.now().millisecondsSinceEpoch;
    }
  }

  //============================
  // banner ads
  //============================

  BannerAd? _bannerAd;
  late final String _bannerAdUnitIdAdUnitId;

  /// Loads a banner ad.
  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: _bannerAdUnitIdAdUnitId,
      request: _requestGoogleAds,
      size: AdSize.banner,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          // _isLoaded = true;
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');
          // Dispose the ad here to free resources.
          ad.dispose();
          _bannerAd = null;
        },
        onAdOpened: (Ad ad) {
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
        },
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) {
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        },
        // Called when an impression occurs on the ad.
        onAdImpression: (Ad ad) {},
      ),
    )..load();
  }

  BannerAd? get bannerAd => _bannerAd;
}
