import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_frenzy/widget/custom_text.dart';

class MyContainer extends StatefulWidget {

  final double height;
  final double width;
  final String heading;
  final String text;
  final String url;
  final double imgHeight;
  final double imgWidth;
  final double sizedHeight1;
  final double sizedHeight2;
  final double left;
  const MyContainer({super.key, required this.height, required this.width, required this.heading, required this.text, required this.url, required this.imgHeight, required this.imgWidth, required this.sizedHeight1, required this.sizedHeight2, required this.left});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.sp)),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 40.w,top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(text: widget.heading, color: Colors.black, size: 50.sp, bold: true),
            SizedBox(height: widget.sizedHeight1),
            MyText(text: widget.text, color: Colors.black, size: 40.sp, bold: false),
            SizedBox(height: widget.sizedHeight2),
            Container(
              margin: EdgeInsets.only(left: widget.left),
              child: Image(image: AssetImage(widget.url),
                height: widget.imgHeight,
                width: widget.imgWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}