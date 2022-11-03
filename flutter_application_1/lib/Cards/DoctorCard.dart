import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/Products/Products.dart';
import 'package:flutter_application_1/Products/Colors.dart';


class DoctorCardWidget extends StatelessWidget
    with _ContSizes, _PaddingUtility {
  DoctorCardWidget({
    super.key,
    required this.textDoctor1,
    required this.textDoctor2,
    required this.textDocPoint,
  });
  //  Classlara Ulaşmak için nesne //
  final String textDoctor1;
  final String textDoctor2;
  final String textDocPoint;
  //  Dışarıdan atanacak değerler (çağrıldğı yerde) //
  ColorUtility colors = ColorUtility();
  BorderUtilty borders = BorderUtilty();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contOuterPadding,
      child: Container(
          decoration: contBoxDec(),
          height: height,
          width: width,
          child: Column(
            children: [
              // Doctor asseti ya da iconu ekleme
              Padding(
                padding: columnPadding,
                child: Icon(FontAwesomeIcons.digitalOcean, size: iconSizeDoc),
              ),
              // Row Açıp star iconu ve pointi ekleme
              Padding(
                padding: rowPadding,
                child: Row(
                  children: [
                    //  Star Icon
                    Icon(
                      FontAwesomeIcons.starHalfStroke,
                      color: colors.colorIconDoc,
                      size: iconSizeStar,
                    ),
                    const SizedBox(width: 10),
                    // Doctor Point
                    Text(
                      textDocPoint,
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              //  Doctor Texts
              Text(
                textDoctor1,
                style: textTheme1(context),
              ),
              const SizedBox(height: 5),
              Text(
                textDoctor2,
                style: textTheme2(context),
              ),
            ],
          )),
    );
  }

// Text Themes
  TextStyle? textTheme2(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: colors.colorText, fontWeight: FontWeight.w400);
  }

  TextStyle? textTheme1(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyLarge
        ?.copyWith(color: colors.colorText, fontWeight: FontWeight.w500);
  }

// Box decoration for card
  BoxDecoration contBoxDec() {
    return BoxDecoration(
      color: colors.colorBoxDeco,
      borderRadius: borders.appIconRadius,
    );
  }
}

// Container and Icon Sizes
class _ContSizes {
  final double height = 170;
  final double width = 130;
  final double iconSizeDoc = 60;
  final double iconSizeStar = 17;
}

// Padding only this dart files
class _PaddingUtility {
  final EdgeInsets contOuterPadding =
      const EdgeInsets.only(left: 25, bottom: 80);
  final EdgeInsets columnPadding = const EdgeInsets.only(
    top: 12,
    bottom: 12,
  );
  final EdgeInsets rowPadding = const EdgeInsets.symmetric(horizontal: 27);
}
