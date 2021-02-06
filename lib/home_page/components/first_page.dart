import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page_1/home_page/components/label_section.dart';
import 'another_card.dart';
import 'box_search.dart';
import 'image_slider.dart';
import 'promo_card.dart';
import 'shared_value.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  ScrollController controller = ScrollController();
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.6);
  bool needResize = false;
  double balanceToRight = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.addListener(() {
      setState(() {
        closeTopContainer = controller.offset > 55;
        moveLeft = controller.offset > 70;
        if (controller.offset.toInt() >= 71) {
          additionalLeftPadding =
              additionalLeftPadding + (controller.offset.toInt() - 71);
        }
        needResize = controller.offset > 70;
        if (controller.offset.toInt() >= 70) {
          resizeName = ((controller.offset - 70)) / 10;
        }
        if (controller.offset.toInt() >= 70) {
          balanceToRight = balanceToRight + ((controller.offset - 70)) / 10;
        }
      });
    });
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 400),
              height:
                  closeTopContainer ? size.height * 0.12 : size.height * 0.2,
              color: Color(0xFFA3D6D4),
            ),
            AnimatedContainer(
              margin: EdgeInsets.only(
                  top: defaultSeparator,
                  left: moveLeft
                      ? min(defaultSeparator, additionalLeftPadding)
                      : 0),
              duration: Duration(milliseconds: 400),
              height: 55,
              width: size.width,
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: needResize
                        ? 1 - (resizeName > 0.2 ? 0.2 : resizeName)
                        : 1, //moveLeft ? min(0.8, resizeName) : 1,
                    child: Text(
                      'AFRIZAL FAHRUDIN',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 22, //moveLeft ? 18 : 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueGrey),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(moveLeft ? min(20, balanceToRight) : 0, 0),
                    child: Text('IDR 200,000',
                        style: GoogleFonts.openSans().copyWith(
                            color: Color(0xFF4D6EF1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 400),
              height: closeTopContainer
                  ? ((size.height * 0.12) * 0.8)
                  : ((size.height * 0.2) * 0.8),
              width: closeTopContainer
                  ? ((size.height * 0.12) * 0.8)
                  : ((size.height * 0.2) * 0.8),
              margin: EdgeInsets.only(
                  left: moveLeft
                      ? (defaultPadding)
                      : (size.width * 0.5) -
                          (closeTopContainer
                              ? (((size.height * 0.12) * 0.8) / 2)
                              : (((size.height * 0.2) * 0.8) / 2)),
                  top: (closeTopContainer
                          ? ((size.height * 0.12) / 2)
                          : ((size.height * 0.2)) / 2) -
                      (closeTopContainer
                          ? (((size.height * 0.12) * 0.8) / 2)
                          : (((size.height * 0.2) * 0.8) / 2 * 0))),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/09/26/146484117.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            controller: controller,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoxSearch(size.width),
                  Padding(
                    padding: EdgeInsets.only(top: defaultSeparator),
                    child: SizedBox(
                      height: 80,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: discount.length,
                          itemBuilder: (context, index) {
                            return PromoCard(index, 'This is for title',
                                'this is for subtitle', discount[index]);
                          }),
                    ),
                  ),
                  LabelSection('Your Section Label Here'),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 280,
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: picture.length,
                        itemBuilder: (context, index) {
                          double diff = index - currentPage;
                          if (diff < 0) {
                            diff *= -1;
                          }
                          diff = min(1, diff);
                          double scale = (1 - (diff * 0.3));
                          return Center(
                              child: SliderImage(scale, picture[index],
                                  name: pictureText[index]['name'],
                                  job: pictureText[index]['job']));
                        }),
                  ),
                  LabelSection('Your Another Section Label here'),
                  AnotherCard(),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 100,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
