import 'package:flutter/material.dart';
import 'package:smart_bite/common/style_extension.dart';
import 'package:smart_bite/screens/home_page.dart';
import 'package:smart_bite/static/onboarding_static.dart';
import 'package:smart_bite/widgets/onboardin_widget_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController _controller = PageController();
  bool lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                setState(() {
                  lastpage = (value == 2);
                });
              },
              controller: _controller,
              children: [
                OnboardinWidgetBody(
                  image: onboarding[0].image,
                  title: onboarding[0].title,
                  subtitle: onboarding[0].subtitle,
                ),
                OnboardinWidgetBody(
                  image: onboarding[1].image,
                  title: onboarding[1].title,
                  subtitle: onboarding[1].subtitle,
                ),
                OnboardinWidgetBody(
                  image: onboarding[2].image,
                  title: onboarding[2].title,
                  subtitle: onboarding[2].subtitle,
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 140,
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: SwapEffect(
                  dotWidth: 25,
                  dotHeight: 6,
                  dotColor: Tcolour.navBG,
                ),
              ),
            ),
            lastpage
                ? Positioned(
                  bottom: 45,
                  right: 25,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      "DONE",
                      style: TextStyle(color: Tcolour.primaryBg, fontSize: 17),
                    ),
                  ),
                )
                : Container(),
          ],
        ),
      ),
    );
  }
}
