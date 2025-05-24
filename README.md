![Pub Points](https://img.shields.io/pub/points/display_ads) ![Static Badge](https://img.shields.io/badge/Dart_Analyze-Pass-blue) ![Static Badge](https://img.shields.io/badge/License-MIT-purple?link=https%3A%2F%2Fgithub.com%2Fcodebox168%2Fdisplay_ads%2Fblob%2Fmain%2FLICENSE)

# Easy way to display google ads

The Display Ads package is a wrapper for the Google Mobile Ads Flutter plugin, which helps developers display Google Mobile Ads in the easiest way.

## Features

- Display Banner ads
- Display Interstitial ads
- Display App Open ads
- Display Rewarded ads

## Getting started

Platform specific setup:

<details>
<summary>Android</summary>

##### Make sure that your app's build file uses the following values:

- Minimum SDK version of 19 or higher
- Compile SDK version of 33 or higher

##### Update AndroidManifest.xml

The AdMob app ID must be included in the AndroidManifest.xml. Failure to do so results in a crash on app launch.

Add the AdMob app ID, as identified in the AdMob web interface, to the app's `android/app/src/main/AndroidManifest.xml` file by adding a <meta-data> tag with the name `com.google.android.gms.ads.APPLICATION_ID`. For android:value, insert your own AdMob app ID in quotes as shown:

```xml
<manifest>
    <application>
        <!-- Sample AdMob app ID for testing : ca-app-pub-3940256099942544~3347511713 -->
        <meta-data
            android:name="com.google.android.gms.ads.APPLICATION_ID"
            android:value="ca-app-pub-xxxxxxxxxxxxxxxx~yyyyyyyyyy"/>
    <application>
<manifest>
```

</details>

<details>
<summary>iOS</summary>

##### Update Info.plist

In your app's `ios/Runner/Info.plist` file, add a `GADApplicationIdentifier` key with a string value of your AdMob app ID, as identified in the AdMob web interface:

```xml
 <!-- Sample AdMob app ID for testing : ca-app-pub-3940256099942544~1458002511 -->
<key>GADApplicationIdentifier</key>
<string>ca-app-pub-################~##########</string>
<key>SKAdNetworkItems</key>
<array>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>cstr6suwn9.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4fzdc2evr5.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4pfyvq9l8r.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>2fnua5tdw4.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ydx93a7ass.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>5a6flpkh64.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>p78axxw29g.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>v72qych5uu.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ludvb6z3bs.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>cp8zw746q7.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3sh42y64q3.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>c6k4g5qg8m.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>s39g8k73mm.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3qy4746246.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>f38h382jlk.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>hs6bdukanm.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>v4nxqhlyqp.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>wzmmz9fp6w.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>yclnxrl5pm.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>t38b2kh725.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>7ug5zh24hu.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>gta9lk7p23.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>vutu7akeur.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>y5ghdn5j9k.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>n6fk4nfna4.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>v9wttpbfk9.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>n38lu8286q.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>47vhws6wlr.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>kbd757ywx3.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>9t245vhmpl.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>eh6m2bh4zr.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>a2p9lx4jpn.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>22mmun2rn5.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4468km3ulz.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>2u9pt9hc89.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>8s468mfl3y.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>klf5c3l5u5.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ppxm28t8ap.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ecpz2srf59.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>uw77j35x4d.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>pwa73g5rt2.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>mlmmfzh3r3.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>578prtvx9j.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4dzt52r2t5.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>e5fvkxwrpn.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>8c4e2ghe7u.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>zq492l623r.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3rd42ekr43.skadnetwork</string>
  </dict>
  <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3qcr597p9d.skadnetwork</string>
  </dict>
</array>
```

</details>

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
        appOpenAdsUnitIdAndroid: 'Put your appOpen AdUnitId for Android here',
        appOpenAdsUnitIdIOS: 'Put your appOpen AdUnitId for Android here',
        rewardedAdUnitIdAndroid: 'Put your rewarded AdUnitId for Android here',
        rewardedAdUnitIdIOS: 'Put your rewarded AdUnitId for Android here',
    );
}
```

### Display Banner Ads

The method below returns a widget, so you can use it in a Flutter widget tree to display banner ads.

```dart
DisplayAds.instance.bannerAd();
```

### Display Interstitial Ads

The method below will open interstitial ads. Call it whenever you want to display interstitial ads.

**Parameters:**

- `beforeStart`: `VoidCallback?` (optional) - A callback function that executes before displaying the interstitial ads.
- `gapInSecond`: `int` (optional, default: 0) - Specifies the time gap (in seconds) between displaying interstitial ads.

```dart
DisplayAds.instance.loadInterstitialAds();
```

### Display App Open Ads

The method below will open app open ads. Call it whenever you want to display app open ads.

**Parameters:**

- `beforeStart`: `VoidCallback?` (optional) - A callback function that executes before displaying the app open ads.
- `gapInSecond`: `int` (optional, default: 0) - Specifies the time gap (in seconds) between displaying app open ads.

```dart
DisplayAds.instance.loadAppOpenAds();
```

### Display Rewarded Ads

The method below will open rewarded ads. Call it whenever you want to display rewarded ads.

**Parameters:**

- `beforeStart`: `VoidCallback?` (optional) - A callback function that executes before displaying the rewarded ads.
- `gapInSecond`: `int` (optional, default: 0) - Specifies the time gap (in seconds) between displaying rewarded ads.
- `onUserEarnedReward`: `VoidCallback?` (optional) - A callback function that executes when the user finishes watching a full ad and earns a reward.

```dart
DisplayAds.instance.loadRewardedAds();
```

## Additional information

If you like this this package please like and give star on [Github](https://github.com/codebox168/display_ads)\
If you have issue with this package please create issue on [Github](https://github.com/codebox168/display_ads)\
Contact [Author](https://www.facebook.com/kememsothea)
