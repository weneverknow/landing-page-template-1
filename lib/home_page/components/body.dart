import 'package:flutter/material.dart';

import 'bottom_navigation.dart';
import 'bottom_navigation_icon.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController pageController;
  int currentPage;
  int selectedIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = 0;
    pageController = PageController(initialPage: 0);
    currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          onPageChanged: (v) {
            setState(() {
              currentPage = v;
            });
          },
          pageSnapping: true,
          children: [FirstPage(), SecondPage(), ThirdPage()],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigation(
              currentPage,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavigationIcon(Icons.home_outlined, 'HOME',
                      clicked: (currentPage == 0), onTap: () {
                    pageController.jumpToPage(0);
                    setState(() {
                      currentPage = 0;
                    });
                  }),
                  BottomNavigationIcon(Icons.history_outlined, 'HISTORY',
                      clicked: (currentPage == 1), onTap: () {
                    pageController.jumpToPage(1);
                    setState(() {
                      currentPage = 1;
                    });
                  }),
                  BottomNavigationIcon(Icons.settings_outlined, 'SETTING',
                      clicked: (currentPage == 2), onTap: () {
                    pageController.jumpToPage(2);
                    setState(() {
                      currentPage = 2;
                    });
                  }),
                ],
              ),
            ))
      ],
    );
  }
}
