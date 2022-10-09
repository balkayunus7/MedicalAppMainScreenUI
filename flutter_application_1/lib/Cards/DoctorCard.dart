import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorCardWidget extends StatelessWidget with _ContSizes {
  DoctorCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 80),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(10),
          ),
          height: height,
          width: width,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                ),
                child: Icon(FontAwesomeIcons.digitalOcean, size: 60),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.starHalfStroke,
                      color: Colors.white,
                      size: 17,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "4.9",
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Dr. Arlene MCcoy",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Text(
                "Theparist ,7 y. e.",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ],
          )),
    );
  }
}

class _ContSizes {
  final double height = 170;
  final double width = 130;
}
