// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/images.dart';
import 'package:flutter2023/res/strings.dart';

import 'component/sizedbox.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            addVerticalSpace(150),
            Image.asset(plango),
            singup(
              labeltext: ConstString.EMAIL,
            ),
            singup(
              labeltext: ConstString.USERNAME,
            ),
            singup(
              labeltext: ConstString.PASSWORD,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    ConstString.HAVEACCOUNT,
                    style: TextStyle(color: GREY2),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text(
                      ConstString.CLICKHERE,
                      style: TextStyle(color: BASECOLOR, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('homepage');
              },
              color: BASECOLOR,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                ConstString.SIGNUP,
                style: TextStyle(color: WHITE, fontSize: 15),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class singup extends StatelessWidget {
  const singup({Key? key, required, this.labeltext})
      : super(
          key: key,
        );
  // ignore: prefer_typing_uninitialized_variables
  final labeltext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          cursorColor: BASECOLOR,
          decoration: InputDecoration(
            labelText: labeltext,
            labelStyle: TextStyle(color: GREY2, fontSize: 17),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: BASECOLOR,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: BASECOLOR,
                )),
          )),
    );
  }
}
