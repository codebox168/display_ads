![Pub Points](https://img.shields.io/pub/points/display_ads) ![Static Badge](https://img.shields.io/badge/Dart_Analyze-Pass-blue) ![Static Badge](https://img.shields.io/badge/License-MIT-purple?link=https%3A%2F%2Fgithub.com%2Fcodebox168%2Fdisplay_ads%2Fblob%2Fmain%2FLICENSE)


# Easy way to display google ads

The Display Ads package is a wrapper for the Google Mobile Ads Flutter plugin, which helps developers display Google Mobile Ads in the easiest way.

## Features

* Display banner ads
* Display interstitial ads

## Getting started

Set up on iOS and Android by following this [Platform specific setup](https://developers.google.com/admob/flutter/quick-start#platform_specific_setup)

## Usage

#### Initialize plugin

```dart
import 'package:display_ads/display_ads.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    DisplayAds.instance.initialize(
        isShowAds: true,
        interstitialAdUnitIdIOS: "Put your interstitial AdUnitId for iOS here",
        interstitialAdUnitIdAndroid:"Put your interstitial AdUnitId for Android here",
        bannerAdUnitIdIOS: "Put your banner AdUnitId for iOS here",
        bannerAdUnitIdAndroid:"Put your banner AdUnitId for Android here",
    );
}
```

#### Display banner ads 

The method below returns a widget, so you can use it in a Flutter widget.

```dart
DisplayAds.instance.bannerAd()
```

#### Display interstitial ads 

The method below will open interstitial ads, so you can call it whenever you want to display interstitial ads.

```dart
DisplayAds.instance.loadInterstitialAds()
```

## Additional information

This package use [google_mobile_ads](https://pub.dev/packages/google_mobile_ads) as dependency.