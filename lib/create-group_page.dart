// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/images.dart';
import 'package:flutter2023/res/strings.dart';

import 'component/sizedbox.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool laundry = false;
  bool dishes = false;
  bool changing = false;
  List<Map> carogries = [
    {
      ConstString.TARGET: ConstString.DOINGLAUNDRY,
      ConstString.NOTES: ConstString.SOMENOTES,
      ConstString.ISCHECKED: false
    },
    {
      ConstString.TARGET: ConstString.CLEANDISHES,
      ConstString.NOTES: ConstString.SOMENOTES,
      ConstString.ISCHECKED: false
    },
    {
      ConstString.TARGET: ConstString.CHANGINGOUTBEDDING,
      ConstString.NOTES: ConstString.SOMENOTES,
      ConstString.ISCHECKED: false
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WHITE,
        body: SafeArea(
            child: Column(children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back, color: GREY2),
                ),
                Text(
                  ConstString.LISTS,
                  style: TextStyle(color: GREY2, fontSize: 15),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ConstString.HOME,
                style: TextStyle(color: BASECOLOR, fontSize: 34),
              ),
              Text(
                ConstString.TASKS_COMPLETED,
                style: TextStyle(color: GREY, fontSize: 10),
              ),
              addVerticalSpace(35),
              Container(
                  decoration: BoxDecoration(
                    color: WHITE,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Row(children: [
                      MaterialButton(
                          splashColor: WHITE,
                          height: 0.2,
                          minWidth: 0.1,
                          onPressed: () {},
                          child: Image.asset(
                            search,
                            scale: 1,
                          )),
                      addHorizontallSpace(7),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ConstString.SEARCH,
                            hintStyle: TextStyle(
                              color: GREY,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      )
                    ]),
                  )),
            ],
          ),
          Column(
              children: carogries.map((favorite) {
            return Padding(
                padding: const EdgeInsets.only(left: 35, right: 34, top: 20),
                child: Dismissible(
                  movementDuration: Duration(seconds: 4),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (direction) {
                    if (direction == DismissDirection.endToStart) {
                      print("delete");
                    } else {
                      print("hello");
                    }
                  },
                  background: Container(
                    color: GREY,
                    child: Icon(
                      Icons.delete,
                      color: WHITE,
                    ),
                  ),
                  key: GlobalKey(),
                  child: CheckboxListTile(
                      title: Text(
                        favorite[ConstString.TARGET],
                        style: TextStyle(
                            color: BLACK,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      subtitle: Text(
                        favorite[ConstString.NOTES],
                        style: TextStyle(color: GREY, fontSize: 10.5),
                      ),
                      value: favorite[ConstString.ISCHECKED],
                      onChanged: (val) {
                        setState(() {
                          favorite[ConstString.ISCHECKED] = val!;
                        });
                      }),
                ));
          }).toList()),
          addVerticalSpace(45)
        ])));
  }
}
