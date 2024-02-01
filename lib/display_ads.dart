library display_ads;

import 'package:display_ads/src/services/google_ads_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class DisplayAds {
  GoogleAdsService? _googleAdsService;

  static DisplayAds? _displayAds;
  bool _isShowAds = true;

  bool get isShowAds => _isShowAds;

  DisplayAds._();

  static DisplayAds get instance {
    _displayAds ??= DisplayAds._();
    return _displayAds!;
  }

  Future<void> initialize({
    bool isShowAds = true,
    String interstitialAdUnitIdAndroid =
        'ca-app-pub-3940256099942544/1033173712',
    String interstitialAdUnitIdIOS = 'ca-app-pub-3940256099942544/4411468910',
    String bannerAdUnitIdAndroid = 'ca-app-pub-3940256099942544/6300978111',
    String bannerAdUnitIdIOS = 'ca-app-pub-3940256099942544/2934735716',
    List<String> requestGoogleAdsKeywords = const [],
  }) async {
    _isShowAds = isShowAds;
    _googleAdsService = GoogleAdsService(
      requestGoogleAdsKeywords: requestGoogleAdsKeywords,
      interstitialAdUnitIdAndroid: interstitialAdUnitIdAndroid,
      interstitialAdUnitIdIOS: interstitialAdUnitIdIOS,
      bannerAdUnitIdAndroid: bannerAdUnitIdAndroid,
      bannerAdUnitIdIOS: bannerAdUnitIdIOS,
    );
  }

  void loadInterstitialAds({VoidCallback? beforeStart}) {
    if (_isShowAds) {
      Future.delayed(const Duration(milliseconds: 500), () {
        _googleAdsService?.loadInterstitialAds(beforeStart: beforeStart);
      });
    }
  }

  Widget bannerAd() {
    if (_googleAdsService?.bannerAd != null && _isShowAds) {
      return SizedBox(
        width: _googleAdsService?.bannerAd!.size.width.toDouble(),
        height: _googleAdsService?.bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _googleAdsService!.bannerAd!),
      );
    } else {
      return const SizedBox(
        height: 0,
      );
    }
  }
}
