import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'Page',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          TextSpan(
              text: '2',
              style: TextStyle(
                  color: Colors.red, fontSize: 46, fontWeight: FontWeight.w700))
        ]),
      ),
    );
  }
}
