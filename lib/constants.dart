import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

Color k1stHalfBG = Color(0xffF7F9FE);

Color kBlueColor = Color(0xff598BED);

TextStyle kLoraTextStyle(double size) {
  return TextStyle(
      fontFamily: 'Lora',
      fontSize: size,
      fontWeight: FontWeight.w700,
      color: Color(0xff08090A));
}

TextStyle kinterTextStyle(FontWeight fontWeight, Color color, double fontSize) {
  return TextStyle(
      fontFamily: 'inter',
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize);
}

Expanded kBox(String Icon, String text) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(19),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: kBlueColor)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(Icon),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: FittedBox(
              fit: BoxFit.contain,
              child: AutoSizeText(
                text,
                style: kinterTextStyle(FontWeight.w600, Color(0xff598BED), 17),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Container kCatlogBox(String image1, String text1, String text2, String text3,
    String image2, double width) {
  return Container(
    width: 244,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Color(0xffEBEDF0))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(image1),
        SizedBox(
          height: 17,
        ),
        Container(
          // margin: EdgeInsets.all(12),
          margin: EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: kinterTextStyle(FontWeight.w700, kBlueColor, 12),
              ),
              SizedBox(
                height: 17,
              ),
              Text(text2, style: kLoraTextStyle(16)),
              SizedBox(
                height: 17,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      text3,
                      style: kinterTextStyle(
                          FontWeight.w500, Color(0xff6D747A), 12),
                    ),
                  ),
                  SizedBox(width: width),
                  Image.asset(image2)
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Row kCatlogUpperDetails(String text1, String text2) {
  return Row(
    children: [
      Text(
        text1,
        style: kLoraTextStyle(18),
      ),
      Expanded(child: SizedBox.shrink()),
      Text(
        text2,
        style: kinterTextStyle(FontWeight.w500, Color(0xff6D747A), 12),
      ),
      SizedBox(
        width: 5,
      ),
      Icon(
        Icons.arrow_forward,
        size: 12,
        color: Color(0xff6D747A),
      )
    ],
  );
}
