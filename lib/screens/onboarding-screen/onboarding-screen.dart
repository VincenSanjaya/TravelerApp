import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/loginorregister-screen/components/body.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';

import 'components/onboarding-content.dart';

class OnBoardingScreen extends StatefulWidget {
  static String routeName = "/onboard";
  const OnBoardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  late PageController _pageController;
  int _pageIndex = 0;
  bool isLastPage = false;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
          child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
                setState(() => isLastPage = index == 3);
              },
              itemCount: demo_data.length,
              controller: _pageController,
              itemBuilder: (context, index) => OnBoardContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    subtitle: demo_data[index].subtitle,
                    description: demo_data[index].description,
                  )),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: isLastPage
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BodyChoose()));
                      },
                      child: Text(
                        "Mulai!",
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      // style: ButtonStyle(
                      //     backgroundColor:
                      //         MaterialStateProperty.all(Styles.primaryColor),
                      //     shape:
                      //         MaterialStateProperty.all<RoundedRectangleBorder>(
                      //             RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(20.0),
                      //     ))),
                    )
                  ],
                )
              : Row(
                  children: [
                    ...List.generate(
                        demo_data.length,
                        (index) => Padding(
                              padding: EdgeInsets.only(right: 4),
                              child:
                                  DotIndicator(isActive: index == _pageIndex),
                            )),
                    const Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: TextButton(
                        onPressed: () {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.ease);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Styles.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    )));
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: isActive
              ? Styles.darkerPrimary
              : Styles.primaryColor.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
