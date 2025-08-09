import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> AppLocale = [
  MapLocale('en', LocalData.EN),
  MapLocale('ja', LocalData.JA),
  MapLocale('zh', LocalData.ZH),
];

mixin LocalData {
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> EN = {
    title: 'Localization',
    body: 'Welcome to Learning of Flutter Localization %a',
  };

  static const Map<String, dynamic> JA = {
    title: 'ローカリゼーション',
    body: 'Flutterローカリゼーションの学習へようこそ',
  };

  static const Map<String, dynamic> ZH = {
    title: '本土化',
    body: '欢迎学习 Flutter 本地化',
  };
}