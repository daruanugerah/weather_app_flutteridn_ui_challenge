import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheaterapp_ui_challenge/appstatenotifier.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:wheaterapp_ui_challenge/style.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(builder: (context, appState, child) {
      return Scaffold(
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 64, 16, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        "assets/images/IcClose.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 23),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Settings',
                  style: mainText.copyWith(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "assets/images/IcNotif.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Notifications",
                              style: mainText.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Turn on for receive daily notifications",
                              style: mainText.copyWith(
                                  fontSize: 13, color: Colors.white70),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 40,
                          child: FlutterSwitch(
                            width: 40,
                            height: 19,
                            activeColor: Colors.white,
                            inactiveColor: Colors.grey,
                            activeToggleColor: mainColor,
                            inactiveToggleColor: Colors.white,
                            toggleSize: 15.0,
                            padding: 2.5,
                            value: status,
                            borderRadius: 20.0,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "assets/images/IcTheme.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dark Mode",
                              style: mainText.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Turn on for dark mode display",
                              style: mainText.copyWith(
                                  fontSize: 13, color: Colors.white70),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 40,
                          child: FlutterSwitch(
                            width: 40,
                            height: 19,
                            activeColor: Colors.white,
                            inactiveColor: Colors.grey,
                            activeToggleColor: mainColor,
                            inactiveToggleColor: Colors.white,
                            toggleSize: 15.0,
                            padding: 2.5,
                            value: Provider.of<AppStateNotifier>(context)
                                .isDarkMode,
                            borderRadius: 20.0,
                            onToggle: (boolVal) {
                              Provider.of<AppStateNotifier>(context)
                                  .updateTheme(boolVal);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
