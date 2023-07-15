
import 'package:flutter/material.dart';
import 'package:flutter2023/res/colors.dart';
import 'package:flutter2023/res/image.dart';
import 'package:flutter2023/res/string.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(plango),
          
            login(
              labeltext: ConstString.USERNAME,
            ),
        
            login(
              labeltext: ConstString.PASSWORD,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                   ConstString.DONTHAVEACCOUNT,
                    style: TextStyle(color:GREY2),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('singup');
                    },
                    child: Text(
                   ConstString.CLICKHERE,
                      style: TextStyle(color:BASECOLOR, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
             MaterialButton(
              padding: EdgeInsets.all(8),
              
              onPressed: () {
              Navigator.of(context).pushNamed('homepage');
              },
              color:BASECOLOR,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
               ConstString.LOGIN,
                style: TextStyle(color:WHITE, fontSize: 15),
              ),
            )
          
          ],
        )),
      ),
    );
  }
}
class login extends StatelessWidget {
  const login({
    Key? key,
    this.labeltext,
  }) : super(key: key);
  final labeltext;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(            
              cursorColor:BASECOLOR,
              decoration: InputDecoration(
                labelText: labeltext,
                labelStyle: TextStyle(color:GREY2, fontSize: 17),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color:BASECOLOR,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color:BASECOLOR,
                    )),
              )),
               
        ],
      ),
    );
  }
}