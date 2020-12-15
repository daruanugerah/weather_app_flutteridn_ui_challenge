import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheaterapp_ui_challenge/appstatenotifier.dart';
import 'package:wheaterapp_ui_challenge/setting_page.dart';
import 'package:wheaterapp_ui_challenge/style.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 10, 16, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Image.asset("assets/images/IcSettings.png"),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 154),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset("assets/images/cloudsun.png"),
                    ),
                    Text(
                      "28\u2103",
                      style:
                          mainText.copyWith(color: Colors.white, fontSize: 65),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 315,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Wednesday, December 22",
                        style: mainText.copyWith(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Image.asset("assets/images/IcMaps.png"),
                        ),
                        Text(
                          "Cilegon, Indonesia",
                          style: mainText.copyWith(
                              fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
