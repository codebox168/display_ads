import 'package:display_ads/display_ads.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DisplayAds.instance.initialize(
    isShowAds: true,
    interstitialAdUnitIdIOS: 'ca-app-pub-3940256099942544/4411468910',
    interstitialAdUnitIdAndroid: 'ca-app-pub-3940256099942544/1033173712',
    bannerAdUnitIdIOS: 'ca-app-pub-3940256099942544/2934735716',
    bannerAdUnitIdAndroid: 'ca-app-pub-3940256099942544/6300978111',
    appOpenAdsUnitIdIOS: 'ca-app-pub-3940256099942544/5575463023',
    appOpenAdsUnitIdAndroid: 'ca-app-pub-3940256099942544/9257395921',
    rewardedAdUnitIdAndroid: 'ca-app-pub-3940256099942544/5224354917',
    rewardedAdUnitIdIOS: 'ca-app-pub-3940256099942544/1712485313',
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showInterstitialAds() {
    DisplayAds.instance.loadInterstitialAds();
  }

  void _showAppOpenAds() {
    DisplayAds.instance.loadAppOpenAds();
  }

  void _showRewardedAds() {
    DisplayAds.instance.loadRewardedAds();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Example of Display Ads"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DisplayAds.instance.bannerAd(),
              ElevatedButton(
                onPressed: _showInterstitialAds,
                child: const Text('Show Interstitial Ads'),
              ),
              ElevatedButton(
                onPressed: _showAppOpenAds,
                child: const Text('Show App Open Ads'),
              ),
              ElevatedButton(
                onPressed: _showRewardedAds,
                child: const Text('Show Rewarded Ads'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
