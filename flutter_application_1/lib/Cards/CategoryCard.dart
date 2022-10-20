import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/Products/Colors.dart';

class CategoryCard extends StatelessWidget with _PaddingUtility {
  CategoryCard({
    super.key,
    required this.textCatCard,
  });
  final String textCatCard;
  ColorUtility colors = ColorUtility();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: categoryLeftPad,
      child: Container(
        color: colors.colorBoxDeco,
        child: Padding(
          padding: categoryAllPad,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(
              FontAwesomeIcons.userDoctor,
              size: iconSize,
              color: colors.colorText,
            ),
            const SizedBox(width: 10),
            Text(
              textCatCard,
              style: textTheme(context),
            ),
          ]),
        ),
      ),
    );
  }

  TextStyle? textTheme(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(color: colors.colorText, fontWeight: FontWeight.w500);
  }
}

// Dosyaya özel classlar  //
class _PaddingUtility {
  final EdgeInsets categoryLeftPad = const EdgeInsets.only(left: 15);
  final EdgeInsets categoryAllPad = const EdgeInsets.all(8);
  final double iconSize = 40;
}
