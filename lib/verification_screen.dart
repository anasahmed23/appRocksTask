import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'main_screen.dart';
import 'package:approcks_task/localization/localization_constants.dart';

class VerScreen extends StatefulWidget {
  @override
  _VerScreenState createState() => _VerScreenState();
}

class _VerScreenState extends State<VerScreen> {
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
                  getTranslated(context, '26_string'),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50.0, top: 10.0),
                        child: Column(
                          children: [
                            Text(
                              getTranslated(context, '27_string'),
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: '*    *    *    *   ',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 100.0),
                              child: FlatButton(
                                color: Colors.blue,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()),
                                  );
                                },
                                child: Text(
                                  getTranslated(context, '28_string'),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 200.0),
                              child: InkWell(
                                child: Text(
                                  getTranslated(context, '29_string'),
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
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
