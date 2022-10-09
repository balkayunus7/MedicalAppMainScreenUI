import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/Products.dart';

class Titles extends StatelessWidget {
  Titles({
    super.key,
    required this.textTitle1,
    required this.textTitle2,
  });
  final String textTitle1;
  final String textTitle2;
  ColorUtility colors = ColorUtility();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textTitle1,
          style: textTheme(context),
        ),
        Text(
          textTitle2,
          style: textTheme2(context),
        ),
      ],
    );
  }

  TextStyle? textTheme(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(color: colors.colorText, fontWeight: FontWeight.w600);
  }

  TextStyle? textTheme2(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(color: colors.colorText, fontWeight: FontWeight.w600);
  }
}
