import 'package:flutter/material.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/images.dart';
import 'package:flutter2023/res/strings.dart';

import 'component/sizedbox.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('login');
            },
            child: Text(
              ConstString.SKIP,
              style: const TextStyle(color: GREY),
            )),
        Image.asset(
          welcome2,
          scale: 1,
        ),
                     addVerticalSpace(20),

        Text(ConstString.STAYORGANIZED,
            style: TextStyle(color: BLACK, fontSize: 24)),
                    addVerticalSpace(10),

        Text(ConstString.GROUPEYOURTASKS,
            style: TextStyle(color: GREY, fontSize: 17)),
      ]),
    );
  }
}
