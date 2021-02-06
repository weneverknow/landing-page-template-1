import 'package:flutter/material.dart';

class BoxSearch extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  BoxSearch(this.width, {this.height = 50, this.icon = Icons.search_outlined});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFA3A3A3),
                  blurRadius: 4,
                  spreadRadius: -6,
                  offset: Offset(0, 5))
            ],
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            border: Border.all(color: Color(0xFFE7E7E7))),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              prefixIcon: Icon(icon)),
        ),
      ),
    );
  }
}
