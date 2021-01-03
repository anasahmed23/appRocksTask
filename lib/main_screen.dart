import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'package:approcks_task/localization/localization_constants.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text(getTranslated(context, '41_string')),
              backgroundColor: Colors.white,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  getTranslated(context, '30_string'),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          getTranslated(context, '31_string'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RaisedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.local_hospital),
                                label: Text(
                                  getTranslated(context, '34_string'),
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ),
                              SizedBox(
                                width: 9.0,
                              ),
                              RaisedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.perm_identity),
                                label: Text(
                                  getTranslated(context, '33_string'),
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ),
                              SizedBox(
                                width: 9.0,
                              ),
                              RaisedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.alarm),
                                label: Text(
                                  getTranslated(context, '32_string'),
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 220.0, top: 20.0),
                          child: Text(
                            getTranslated(context, '35_string'),
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  getTranslated(context, '36_string'),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle:
                                    Text(getTranslated(context, '37_string')),
                                trailing: Icon(Icons.person_outline),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 200.0, top: 20.0),
                          child: Text(
                            getTranslated(context, '38_string'),
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  getTranslated(context, '39_string'),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle:
                                    Text(getTranslated(context, '40_string')),
                                trailing: Icon(Icons.local_hospital),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
