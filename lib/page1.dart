// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/image.dart';
import 'package:flutter2023/res/string.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            alignment: Alignment.topRight,
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('login');
                },
                child: Text(
                  ConstString.SKIP,
                  style: const TextStyle(color: GREY),
                )),
          ),
        ),
        Image.asset(
          welcome1,
          scale: 2.5,
        ),
        SizedBox(
          height: 20,
        ),
        Text(ConstString.WRITELISTS,
            style: TextStyle(color: BLACK, fontSize: 24)),
        SizedBox(
          height: 10,
        ),
        Text(ConstString.WRITEYOURTASKS,
            style: TextStyle(color: GREY, fontSize: 17))
      ]),
    );
  }
}
