import 'package:flutter/material.dart';

class BottomNavigationIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool clicked;
  final Function onTap;
  BottomNavigationIcon(this.icon, this.text,
      {this.clicked = false, @required this.onTap});
  @override
  Widget build(BuildContext context) {
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
          onTap: onTap,
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
