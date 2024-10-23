import 'package:flutter/material.dart';
import 'package:radio_abia/core/constants/color.dart';

class InputText extends StatelessWidget {
  const InputText({
    super.key,
    this.color = AppColors.textColor,
    required this.fontSize,
    required this.text,
    this.fontWeight,
    this.textAlign,
    this.fontStyle = FontStyle.normal,
    this.textScaler,
    this.maxLines,
    this.overflow,
  });
  final Color color;
  final double fontSize;
  final String text;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final FontStyle fontStyle;
  final TextScaler? textScaler;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontStyle: fontStyle,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
