import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheaterapp_ui_challenge/appstatenotifier.dart';
import 'package:wheaterapp_ui_challenge/style.dart';

class CustomList extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomList({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return Container(
          height: 235,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xFFFAFAFC),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 125,
                height: 7,
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Color(0xFFDEDEDE),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (onTap != null) {
                          onTap(0);
                        }
                      },
                      child: Container(
                        width: 62,
                        height: 120,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                width: 62,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: selectedIndex == 0
                                      ? mainColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 7,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "24 \u2103",
                                    style: mainText.copyWith(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              child: Center(
                                child: Container(
                                  width: 62,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/cloudrain.png"),
                                  )),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              left: 0,
                              right: 0,
                              child: Text(
                                'Sun',
                                textAlign: TextAlign.center,
                                style: mainText.copyWith(
                                    fontSize: 14,
                                    color: selectedIndex == 0
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (onTap != null) {
                          onTap(1);
                        }
                      },
                      child: Container(
                        width: 62,
                        height: 120,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                width: 62,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: selectedIndex == 1
                                      ? mainColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 7,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "24 \u2103",
                                    style: mainText.copyWith(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              child: Center(
                                child: Container(
                                  width: 62,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/cloudrain.png"),
                                  )),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              left: 0,
                              right: 0,
                              child: Text(
                                'Mon',
                                textAlign: TextAlign.center,
                                style: mainText.copyWith(
                                    fontSize: 14,
                                    color: selectedIndex == 1
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (onTap != null) {
                          onTap(2);
                        }
                      },
                      child: Container(
                        width: 62,
                        height: 120,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                width: 62,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: selectedIndex == 2
                                      ? mainColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 7,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "28 \u2103",
                                    style: mainText.copyWith(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              child: Center(
                                child: Container(
                                  width: 62,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage("assets/images/cloudsun.png"),
                                  )),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              left: 0,
                              right: 0,
                              child: Text(
                                'Tue',
                                textAlign: TextAlign.center,
                                style: mainText.copyWith(
                                    fontSize: 14,
                                    color: selectedIndex == 2
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (onTap != null) {
                          onTap(3);
                        }
                      },
                      child: Container(
                        width: 62,
                        height: 120,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                width: 62,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: selectedIndex == 3
                                      ? mainColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 7,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "25 \u2103",
                                    style: mainText.copyWith(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              child: Center(
                                child: Container(
                                  width: 62,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/cloudrain.png"),
                                  )),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              left: 0,
                              right: 0,
                              child: Text(
                                'Wed',
                                textAlign: TextAlign.center,
                                style: mainText.copyWith(
                                    fontSize: 14,
                                    color: selectedIndex == 3
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 32,
                      height: 12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFFDEDEDE),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
