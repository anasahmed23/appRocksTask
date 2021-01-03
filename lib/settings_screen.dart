import 'package:approcks_task/language.dart';
import 'package:approcks_task/localization/demo_localization.dart';
import 'package:approcks_task/localization/localization_constants.dart';
import 'package:approcks_task/main.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void _changeLanguage(Language language) {
    Locale _temp;
    switch (language.languageCode) {
      case 'ar':
        _temp = Locale(language.languageCode, 'ar');
        break;
      case 'en':
        _temp = Locale(language.languageCode, 'US');
        break;

      default:
        _temp = Locale(language.languageCode, 'US');
    }
    MyApp.setLocale(context, _temp);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  getTranslated(context, '41_string'),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Card(
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    getTranslated(context, '42_string'),
                                    textAlign: TextAlign.right,
                                  ),
                                  // trailing: Icon(Icons.language),
                                  //subtitle: Text('this is english'),
                                ),
                                DropdownButton(
                                  icon: Icon(Icons.language),
                                  underline: SizedBox(),
                                  items: Language.languageList()
                                      .map<DropdownMenuItem<Language>>(
                                          (langs) => DropdownMenuItem(
                                                value: langs,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: <Widget>[
                                                    Text(langs.name),
                                                    Text(langs.flag),
                                                  ],
                                                ),
                                              ))
                                      .toList(),
                                  onChanged: (Language language) {
                                    _changeLanguage(language);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
