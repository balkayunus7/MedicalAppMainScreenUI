import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/Products.dart';
import 'package:flutter_application_1/Cards/CategoryCard.dart';
import 'package:flutter_application_1/Cards/DoctorCard.dart';
import 'package:flutter_application_1/pieces/AppBar.dart';
import 'package:flutter_application_1/Cards/AnimationCard.dart';
import 'package:flutter_application_1/pieces/SearchBar.dart';
import 'package:flutter_application_1/pieces/Titles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextUtiliy texts = TextUtiliy();
  final ColorUtility colors = ColorUtility();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //    APPBAR  //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SearchBarWidget(
                textfieldText: texts.textfieldText,
              ),
            ),
            const SizedBox(height: 35),
            // Category cardların yer aldığı yatayda kaydırılan listview //
            Container(
              height: 60,
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                children: const [
                  DoctorCardWidget(),
                  DoctorCardWidget(),
                  DoctorCardWidget(),
                  DoctorCardWidget(),
                  DoctorCardWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
