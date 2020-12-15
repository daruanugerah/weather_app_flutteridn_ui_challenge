import 'package:flutter/material.dart';
import 'package:wheaterapp_ui_challenge/splash_page.dart';
import 'package:wheaterapp_ui_challenge/style.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 12,
      width: isActive ? 32 : 12,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFF8F081) : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: mainColor,
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/OnBoarding_1.png',
                                  ),
                                  fit: BoxFit.contain,
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'Welcome to\nFindWeather',
                                style: mainText.copyWith(fontSize: 20),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'The most accurate and reliable weather\nforecasts across the globe.',
                                style: mainText.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/OnBoarding_2.png',
                                  ),
                                  fit: BoxFit.contain,
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'A detailed\nFindWeather',
                                style: mainText.copyWith(fontSize: 20),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Weather index alerts you about threats like\nextreme storms, helping you stay safe.',
                                style: mainText.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onBoarding_3.png',
                                  ),
                                  fit: BoxFit.contain,
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'Daily weather',
                                style: mainText.copyWith(fontSize: 20),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'View hourly or daily forecast, sunrise and\nsunset time, realtime temperature,\nhumidity, pressure and wind direction.',
                                style: mainText.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: _buildPageIndicator(),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 24),
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: RaisedButton(
                      elevation: 0,
                      color: Color(0xFFF8F081),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      onPressed: () {
                        if (_currentPage != _numPages - 1) {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashPage(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        _currentPage == _numPages - 1 ? "Get Started" : "Next",
                        style: mainText.copyWith(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
