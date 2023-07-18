import 'package:flutter/material.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/images.dart';
import 'package:flutter2023/res/strings.dart';

import 'component/sizedbox.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
          welcome3,
          scale: 0.8,
        ),
        addVerticalSpace(40),
        Text(ConstString.CHECKPROGRESS,
            style: TextStyle(color: BLACK, fontSize: 24)),
        addVerticalSpace(10),
        Text(ConstString.GROUPEYOURTASKS,
            style: TextStyle(color: GREY, fontSize: 17))
      ]),
    );
  }
}
