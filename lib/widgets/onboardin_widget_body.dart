import 'package:flutter/material.dart';
import 'package:smart_bite/common/style_extension.dart';
// import 'package:smart_bite/static/onboarding_static.dart';

class OnboardinWidgetBody extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const OnboardinWidgetBody({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        Divider(endIndent: 50, indent: 50, thickness: 1),
        SizedBox(height: 10),
        Text(title, style: TTextStyle.heading1.copyWith(fontSize: 25)),
        Padding(padding: const EdgeInsets.all(15.0), child: Text(subtitle)),
      ],
    );
  }
}
