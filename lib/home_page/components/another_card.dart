import 'package:flutter/material.dart';
import 'shared_value.dart';

class AnotherCard extends StatefulWidget {
  @override
  _AnotherCardState createState() => _AnotherCardState();
}

class _AnotherCardState extends State<AnotherCard> {
  int currentCard;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentCard = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          margin: EdgeInsets.only(
              top: defaultSeparator,
              left: defaultPadding,
              right: defaultPadding),
          child: PageView.builder(
              onPageChanged: (v) {
                setState(() {
                  currentCard = v;
                });
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: index == 5 ? 0 : 3),
                  padding:
                      EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
                  decoration: BoxDecoration(
                    color: index.isEven ? Color(0xFFFF9AA2) : Color(0xFFFFB7B2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Large Text here',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Medium Text here',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF494848)),
                              )
                            ],
                          ),
                          Text(
                            'Small Text here',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF494949)),
                          )
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Icon(
                          Icons.account_circle,
                          size: 100,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
          child: SizedBox(
              width: 150,
              height: 20,
              child: Row(
                children: List.generate(6, (index) {
                  return buildDot(index);
                }),
              )),
        ),
      ],
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 12,
      height: 12,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD6D6D6)), shape: BoxShape.circle),
      child: Container(
        decoration: BoxDecoration(
            color: (index == currentCard)
                ? (index.isEven ? Color(0xFFFF9AA2) : Color(0xFFFFB7B2))
                : Colors.transparent,
            shape: BoxShape.circle),
      ),
    );
  }
}
