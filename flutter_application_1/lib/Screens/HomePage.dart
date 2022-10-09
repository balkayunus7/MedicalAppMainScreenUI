import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/Products.dart';
import 'package:flutter_application_1/Cards/CategoryCard.dart';
import 'package:flutter_application_1/Cards/DoctorCard.dart';
import 'package:flutter_application_1/pieces/AppBar.dart';
import 'package:flutter_application_1/Cards/AnimationCard.dart';
import 'package:flutter_application_1/pieces/SearchBar.dart';
import 'package:flutter_application_1/pieces/Titles.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextUtiliy texts = TextUtiliy();
  final ColorUtility colors = ColorUtility();
  final _PaddingUtility padding = _PaddingUtility();
  final _ContSizes sizes = _ContSizes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.colorScaff,
      body: SafeArea(
        child: Column(
          children: [
            //    APPBAR  //
            Padding(
              padding: padding.appBarPadding,
              child: AppBarWidget(
                textAppBar1: texts.textAppbar1,
                textAppBar2: texts.textAppbar2,
                colorText: colors.colorText,
                iconColor: colors.colorIcon,
              ),
            ),
            const SizedBox(height: 20),
            //    AnimationCard   //
            Padding(
              padding: padding.animCarBarPadding,
              child: AnimationCardWidget(
                textColor: colors.colorText,
                urlLottie: texts.urlLottie,
                textCardSubt: texts.textCardSubt,
                textCardTitle: texts.textCardTitle,
                textIconCard: texts.textIconCard,
              ),
            ),
            //     Search Bar  //
            const SizedBox(height: 20),
            Padding(
              padding: padding.searchBarPadding,
              child: SearchBarWidget(
                textfieldText: texts.textfieldText,
              ),
            ),
            const SizedBox(height: 35),
            // Category cardların yer aldığı yatayda kaydırılan listview //
            Container(
              height: sizes.catCardHeight,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    textCatCard: texts.textCatCard,
                  ),
                  CategoryCard(
                    textCatCard: texts.textCatCard,
                  ),
                  CategoryCard(
                    textCatCard: texts.textCatCard,
                  ),
                  CategoryCard(
                    textCatCard: texts.textCatCard,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            //   Doctor List ve See all başlıkları  //
            Padding(
              padding: padding.listTitlepadding,
              child: Titles(
                textTitle1: texts.textTitle1,
                textTitle2: texts.textTitle2,
              ),
            ),
            const SizedBox(height: 40),
            // Doctor Card Widgetlarını Sıralıycak Listview
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCardWidget(
                    textDoctor1: texts.textDoctor1,
                    textDoctor2: texts.textDoctor2,
                    textDocPoint: texts.textDocPoint,
                  ),
                  DoctorCardWidget(
                    textDoctor1: texts.textDoctor1,
                    textDoctor2: texts.textDoctor2,
                    textDocPoint: texts.textDocPoint,
                  ),
                  DoctorCardWidget(
                    textDoctor1: texts.textDoctor1,
                    textDoctor2: texts.textDoctor2,
                    textDocPoint: texts.textDocPoint,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  Padding only this dart files
class _PaddingUtility {
  final EdgeInsets appBarPadding = const EdgeInsets.symmetric(horizontal: 25);
  final EdgeInsets animCarBarPadding =
      const EdgeInsets.symmetric(horizontal: 25);

  final EdgeInsets searchBarPadding =
      const EdgeInsets.symmetric(horizontal: 25);
  final EdgeInsets listTitlepadding =
      const EdgeInsets.symmetric(horizontal: 10);
}

// Container  Sizes
class _ContSizes {
  final double catCardHeight = 60;
  final double width = 130;
  final double iconSizeDoc = 60;
  final double iconSizeStar = 17;
}
