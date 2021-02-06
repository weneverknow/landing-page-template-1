import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentPage;
  final Widget child;
  BottomNavigation(this.currentPage, {@required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color(0xFFE4E4E4),
              blurRadius: 3,
              spreadRadius: -2,
              offset: Offset(0, -1))
        ]),
        child: child);
  }

  Container buildIconButton(IconData icon, String text,
      {bool clicked = false}) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(25),
        animationDuration: Duration(milliseconds: 600),
        color: Colors.transparent,
        child: InkWell(
          splashColor: clicked ? Color(0xFF737373) : Color(0xFF75C2A6),
          borderRadius: BorderRadius.circular(25),
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                  size: 30,
                  color: clicked ? Color(0xFFB5EAD7) : Color(0xFF737373)),
              SizedBox(
                height: 3,
              ),
              Text(
                text,
                style: TextStyle(
                    color: clicked ? Color(0xFFB5EAD7) : Color(0xFF737373),
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}
