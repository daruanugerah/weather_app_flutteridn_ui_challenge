import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheaterapp_ui_challenge/appstatenotifier.dart';
import 'package:wheaterapp_ui_challenge/custom_list.dart';
import 'package:wheaterapp_ui_challenge/first_page.dart';
import 'package:wheaterapp_ui_challenge/fourth_page.dart';
import 'package:wheaterapp_ui_challenge/second_page.dart';
import 'package:wheaterapp_ui_challenge/third_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                color: Theme.of(context).primaryColor,
              ),
              SafeArea(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                  children: [
                    FirstPage(),
                    SecondPage(),
                    ThirdPage(),
                    FourthPage()
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomList(
                  selectedIndex: selectedPage,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                    pageController.jumpToPage(selectedPage);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    // Widget loadingIndicator = SpinKitFadingCircle(
    //   size: 45,
    //   color: Colors.amber,
    // );
  }
}
