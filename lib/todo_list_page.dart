// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/images.dart';
import 'package:flutter2023/res/strings.dart';
import 'component/sizedbox.dart';

// ignore: use_key_in_widget_constructors
class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  getCard(String title, int totalTasks, int complTasks) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          margin: EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: WHITE,
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(right: 58, top: 10),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: BLACK,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )),
              addVerticalSpace(12),
              Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  totalTasks.toString() +
                      ' ' +
                      ConstString.TASKS +
                      '  -  ' +
                      complTasks.toString() +
                      ' ' +
                      ConstString.COMPLETED,
                  style: TextStyle(color: GREY, fontSize: 10.5)),
              addVerticalSpace(11),
              Column(
                children: complTasks == 0
                    ? [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: GREY3),
                          width: 120,
                          height: 5,
                        )
                      ]
                    : [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: GREY3),
                              width: 120,
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: BASECOLOR),
                              width: 70,
                              height: 5,
                            ),
                          ],
                        )
                      ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
      body: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(34),
                      child: Text(
                        ConstString.LISTS,
                        style: TextStyle(
                            color: BLACK,
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          addVerticalSpace(15),
          Container(
              decoration: BoxDecoration(
                color: WHITE,
                borderRadius: BorderRadius.circular(24),
              ),
              width: 317,
              height: 46,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
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
          Expanded(
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
              ),
              children: [
                /// 1
                getCard(ConstString.WORK, 10, 5),
                getCard(ConstString.SCHOOL, 12, 0),
                getCard(ConstString.HOME, 10, 5),
                getCard(ConstString.OTHER, 15, 0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35, left: 283),
            child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                            height: 240,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: WHITE),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: GREY3),
                                    width: 100,
                                    height: 5,
                                  ),
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Container(
                                      width: 750,
                                      color: WHITE1.withOpacity(0.5),
                                      child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              labelText: ConstString.GROUPNAME,
                                              labelStyle: TextStyle(
                                                  color: GREY, fontSize: 22))),
                                    ),
                                  )),
                              SizedBox(
                                width: 620,
                                height: 60,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('home');
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: BASECOLOR,
                                      ),
                                      child: Center(
                                          child: Text(
                                        ConstString.CREATGROUP,
                                        style: TextStyle(
                                            color: WHITE, fontSize: 22),
                                      ))),
                                ),
                              )
                            ]));
                      });
                },
                child: Image.asset(plus)),
          ),
        ],
      ),
    );
  }
}
