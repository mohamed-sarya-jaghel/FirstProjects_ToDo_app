// // ignore_for_file: prefer_const_constructors

// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter2023/res/colors.dart';
// import 'package:flutter2023/res/string.dart';
// import 'package:meta/meta.dart';

// import '../res/image.dart';
// part 'bloctest_event.dart';
// part 'bloctest_state.dart';

// class BloctestBloc extends Bloc<BloctestEvent, BloctestState> {
//   BloctestBloc() : super(BloctestInitial()) {
//     on<BloctestEvent>((event, emit) {
//       if (event is Plustab) {
//         @override
//         Widget build(BuildContext context) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 35, left: 283),
//             child: InkWell(
//                 onTap: () {
//                   showModalBottomSheet(
//                       context: context,
//                       builder: (context) {
//                         return Container(
//                             height: 240,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color:WHITE),
//                             child: Column(children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(12),
//                                 child: Center(
//                                     child:
//                                         Image.asset("images/Rectangle 20.png")),
//                               ),
//                               InkWell(
//                                   onTap: () {},
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(20),
//                                     child: Container(
//                                       color:WHITE
//                                           .withOpacity(0.5),
//                                       child: TextField(
//                                           decoration: InputDecoration(
//                                               border: OutlineInputBorder(
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           20)),
//                                               hintText:ConstString.GROUPNAME,
//                                               hintStyle: TextStyle(
//                                                   color: GREY3,
//                                                   fontSize: 18))),
//                                     ),
//                                   )),
//                               InkWell(
//                                 onTap: () {
//                                   Navigator.of(context).pushNamed('home');
//                                 },
//                                 child: Container(
//                                     width: 350,
//                                     height: 65,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         color:
//                                          BASECOLOR),
//                                     child: Center(
//                                         child: Text(
//                                     ConstString.CREATGROUP,
//                                       style: TextStyle(
//                                           color: WHITE, fontSize: 18),
//                                     ))),
//                               )
//                             ]));
//                       });
//                 },
//                 child: Image.asset(plus)),
//           );
//         }
//       } else if (event is CreatGroub) {
//       } else {}
//     });
//   }
// }
