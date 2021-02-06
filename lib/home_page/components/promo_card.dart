import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final int discount;
  PromoCard(this.index, this.title, this.subtitle, this.discount);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 80,
      margin: EdgeInsets.only(
          left: index == 0 ? 24 : 15, right: index == 5 ? 24 : 0),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black26,
            blurRadius: 3,
            spreadRadius: -1,
            offset: Offset(1, 2))
      ], borderRadius: BorderRadius.circular(10), color: Color(0xFF7BB899)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$discount%',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'This is for title',
                style: TextStyle(
                    color: Color(0xFFE2F0CB),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
              Text(
                'This is for subtitle',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
                maxLines: 2,
                overflow: TextOverflow.clip,
              )
            ],
          )
        ],
      ),
    );
  }
}
