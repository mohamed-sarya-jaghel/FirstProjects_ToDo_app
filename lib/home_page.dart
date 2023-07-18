// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter2023/first_page.dart';
import 'package:flutter2023/second_page.dart';
import 'package:flutter2023/get_start_page.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage_listState();
}

class _Homepage_listState extends State<Homepage> {
  PageController pageController = PageController(initialPage: 0);
  int current_page = 0;
  List pages = [Page1(), Page2(), Page3()];
  onChanged(int index) {
    setState(() {
      current_page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: onChanged,
                children: [Page1(), Page2(), Page3()],
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: pages.length,
              effect: JumpingDotEffect(
                  verticalOffset: 10,
                  activeDotColor: BASECOLOR,
                  dotHeight: 15,
                  dotWidth: 15,
                  dotColor: GREY.withOpacity(0.7)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 200, top: 20),
              child: ElevatedButton(
                child: (current_page == (pages.length - 1))
                    ? Text(
                        ConstString.GETSTATR,
                        style: TextStyle(fontSize: 17, color: WHITE),
                      )
                    : Text(
                        ConstString.NEXT,
                        style: TextStyle(color: WHITE),
                      ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BASECOLOR),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
                onPressed: () {
                  (current_page == (pages.length - 1))
                      ? Navigator.of(context).pushNamed('login')
                      : pageController.nextPage(
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeInOutQuint);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
