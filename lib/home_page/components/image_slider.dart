import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  final double scale;
  final String image;
  final String name;
  final String job;

  SliderImage(this.scale, this.image, {this.name = '', this.job = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280 * scale,
        width: 210 * scale,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 120,
                  width: 170,
                  padding:
                      EdgeInsets.only(top: 5, left: 5, right: 3, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            height: 1.1,
                            fontWeight: FontWeight.w700),
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        job,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
