import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization/localization/app_locale.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late FlutterLocalization _localization;
  late String _currentLanguage;

  @override
  void initState() {
    _localization = FlutterLocalization.instance;
    _currentLanguage = _localization.currentLocale!.languageCode;
    debugPrint(_currentLanguage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocalData.title.getString(context),),
        actions: [
          DropdownButton(
            items: const [
              DropdownMenuItem(
                value: 'en',
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: 'ja',
                child: Text('Japanese'),
              ),
              DropdownMenuItem(
                value: 'zh',
                child: Text('Chinese'),
              ),
            ],
            onChanged: (value) => _setLocale(value),
            value: _currentLanguage,),
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Text(context.formatString(LocalData.body, ['Rawnak'])),
        ),
      ),
    );
  }

  void _setLocale(String? locale) {
    if (locale == null) return;

    if (locale == 'en') {
      _localization.translate('en');
    } else if (locale == 'ja') {
      _localization.translate('ja');
    } else if (locale == 'zh') {
      _localization.translate('zh');
    } else {
      _localization.translate('en');
    }
    setState(() => _currentLanguage = locale);
  }
}
