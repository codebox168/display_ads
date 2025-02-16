/// Flutter packages that make it easy to implement google_mobile_ads.
///
/// Get started at [display_ads](https://pub.dev/packages/display_ads) 🚀
library;

import 'package:display_ads/src/services/google_ads_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class DisplayAds {
  GoogleAdsService? _googleAdsService;

  static DisplayAds? _displayAds;
  bool _isShowAds = true;

  bool get isShowAds => _isShowAds;

  DisplayAds._();

  /// [instance]
  ///
  /// DispleAds implement using Singleton pattern,so This instance property is the instance  of DisplayAds\
  ///
  static DisplayAds get instance {
    _displayAds ??= DisplayAds._();
    return _displayAds!;
  }

  /// [initialize]
  ///
  /// Use for initialize the pacakage\
  /// Normally we call it in main function after call WidgetsFlutterBinding.ensureInitialized();\
  /// This method have many optional params:
  ///
  /// `isShowAds` is we want to show the ads or not defult true.\
  /// `appOpenAdUnitIdAndroid` appOpen AdUnit Id for Android defult test AdUnitId.\
  /// `appOpenAdUnitIdIOS` appOpen AdUnit Id for iOS defult test AdUnitId.\
  /// `interstitialAdUnitIdAndroid` interstitial AdUnit Id for Android defult test AdUnitId.\
  /// `interstitialAdUnitIdIOS` interstitial AdUnit Id for iOS defult test AdUnitId.\
  /// `RewardedAdUnitIdAndroid` Rewarded AdUnit Id for Android defult test AdUnitId.\
  /// `RewardedAdUnitIdIOS` Rewarded AdUnit Id for iOS defult test AdUnitId.\
  /// `bannerAdUnitIdAndroid` banner AdUnit Id for Android defult test AdUnitId.\
  /// `bannerAdUnitIdIOS`banner AdUnit Id for iOS defult test AdUnitId.
  ///
  /// ```
  /// void main() async {
  ///   WidgetsFlutterBinding.ensureInitialized();
  ///   await DisplayAds.instance.initialize();
  ///   runApp(const MyApp());
  /// }
  /// ```
  ///
  Future<void> initialize({
    bool isShowAds = true,
    String appOpenAdsUnitIdAndroid = 'ca-app-pub-3940256099942544/9257395921',
    String appOpenAdsUnitIdIOS = 'ca-app-pub-3940256099942544/5575463023',
    String interstitialAdUnitIdAndroid =
        'ca-app-pub-3940256099942544/1033173712',
    String interstitialAdUnitIdIOS = 'ca-app-pub-3940256099942544/4411468910',
    String rewardedAdUnitIdAndroid = 'ca-app-pub-3940256099942544/5224354917',
    String rewardedAdUnitIdIOS = 'ca-app-pub-3940256099942544/1712485313',
    String bannerAdUnitIdAndroid = 'ca-app-pub-3940256099942544/6300978111',
    String bannerAdUnitIdIOS = 'ca-app-pub-3940256099942544/2934735716',
    List<String> requestGoogleAdsKeywords = const [],
  }) async {
    _isShowAds = isShowAds;
    if (isShowAds) {
      _googleAdsService = GoogleAdsService(
        requestGoogleAdsKeywords: requestGoogleAdsKeywords,
        appOpenAdsUnitIdAndroid: appOpenAdsUnitIdAndroid,
        appOpenAdsUnitIdIOS: appOpenAdsUnitIdIOS,
        interstitialAdUnitIdAndroid: interstitialAdUnitIdAndroid,
        interstitialAdUnitIdIOS: interstitialAdUnitIdIOS,
        rewardedAdUnitIdAndroid: rewardedAdUnitIdAndroid,
        rewardedAdUnitIdIOS: rewardedAdUnitIdIOS,
        bannerAdUnitIdAndroid: bannerAdUnitIdAndroid,
        bannerAdUnitIdIOS: bannerAdUnitIdIOS,
      );
    }
  }

  /// [loadAppOpenAds]
  ///
  /// Call this method when ever you want to display App Open Ads to this user;\
  ///
  /// `beforeStart` is VoidCallback. This function well execute before display App Open Ads\
  /// `gapInSecond` is Integer. The default value is 0 . Use this to create a gap between displaying App Open ads at every subsequent time.
  ///
  /// ```
  ///  DisplayAds.instance.loadAppOpenAds();
  /// ```
  ///
  void loadAppOpenAds({VoidCallback? beforeStart, int gapInSecond = 0}) {
    if (_isShowAds) {
      Future.delayed(const Duration(milliseconds: 200), () {
        _googleAdsService?.loadAppOpenAds(
            beforeStart: beforeStart, gapInSecond: gapInSecond);
      });
    }
  }

  /// [loadInterstitialAds]
  ///
  /// Call this method when ever you want to display Interstitial Ads to this user;\
  ///
  /// `beforeStart` is VoidCallback. This function well execute before display Interstitial Ads\
  /// `gapInSecond` is Integer. The default value is 0 . Use this to create a gap between displaying interstitial ads at every subsequent time.
  ///
  /// ```
  ///  DisplayAds.instance.loadInterstitialAds();
  /// ```
  ///
  void loadInterstitialAds({VoidCallback? beforeStart, int gapInSecond = 0}) {
    if (_isShowAds) {
      Future.delayed(const Duration(milliseconds: 500), () {
        _googleAdsService?.loadInterstitialAds(
            beforeStart: beforeStart, gapInSecond: gapInSecond);
      });
    }
  }

  /// [loadRewardedAds]
  ///
  /// Call this method when ever you want to display Rewarded Ads to this user;\
  ///
  /// `beforeStart` is VoidCallback. This function well execute before display Rewarded Ads\
  /// `gapInSecond` is Integer. The default value is 0 . Use this to create a gap between displaying Rewarded ads at every subsequent time.
  ///
  /// ```
  ///  DisplayAds.instance.loadRewardedAds();
  /// ```
  ///
  void loadRewardedAds({VoidCallback? beforeStart, int gapInSecond = 0}) {
    if (_isShowAds) {
      Future.delayed(const Duration(milliseconds: 100), () {
        _googleAdsService?.loadRewardedAds(
            beforeStart: beforeStart, gapInSecond: gapInSecond);
      });
    }
  }

  /// [bannerAd]
  ///
  /// This method return a widget of banner Ads.\
  /// You can display banner ads by put this method in widget tree where you want display.
  ///
  /// ```
  ///  DisplayAds.instance.bannerAd();
  /// ```
  ///
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
