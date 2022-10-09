import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/Products.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget with _PaddingUtility {
  AppBarWidget({
    super.key,
    required this.textAppBar1,
    required this.textAppBar2,
    required this.colorText,
    required this.iconColor,
  });
  // Classlara Ulaşmak için nesne
  ColorUtility colors = ColorUtility();
  BorderUtilty borders = BorderUtilty();
  // Dışarıdan atanacak değerler (çağrıldğı yerde)
  final String textAppBar1;
  final String textAppBar2;
  final Color colorText;
  final Color iconColor;
  //**************************** */
  @override
  Widget build(BuildContext context) {
    // Appbarın yer alacağı row
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Textlerin alt alta sıralanacağı column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: textPadding,
              child: Text(
                textAppBar1,
                style: textThemes1(context),
              ),
            ),
            Text(
              textAppBar2,
              style: textThemes2(context),
            ),
          ],
        ),
        //****************************** */
        // Icon ve dekorasyonu
        Container(
          padding: iconContPadding,
          decoration: boxDecoraiton(),
          child: Icon(
            Icons.person_add_outlined,
            color: iconColor,
          ),
        ),
      ],
    );
  }

  // TextThemeların extract  methodu  kullanılarak dışarı atılması
  TextStyle? textThemes2(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(color: colorText, fontWeight: FontWeight.w500);
  }

  TextStyle? textThemes1(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(color: colorText);
  }

  // Box dekorasyonun extract methodu
  BoxDecoration boxDecoraiton() {
    return BoxDecoration(
        color: colors.colorBoxDeco, borderRadius: borders.appIconRadius);
  }
}

// Atanan padding değerleri
class _PaddingUtility {
  final EdgeInsets iconContPadding = const EdgeInsets.all(12);
  final EdgeInsets textPadding = const EdgeInsets.all(4);
}
