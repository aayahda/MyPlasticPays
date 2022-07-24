import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Components/textfield.dart';
import 'MainScreen.dart';
import 'RegistrationScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:15,left: 25,right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120,),
            Text("Welcome back!",style: TextStyle(color:Color(0xff1c60ff),fontSize: 27,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Text("We're super excited to have you on board!\n Login to track your progress",style: TextStyle(color: Colors.black54,fontSize: 17),),
            SizedBox(height: 35,),
            TextInpField("Email", TextInputType.emailAddress, false),
            SizedBox(height: 15,),
            TextInpField("Password", TextInputType.text, true),
            SizedBox(height: 200,),
            SizedBox(
              child: Center(
                child: Container(
                    width: 270,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black38,
                        blurRadius:10,
                        offset: Offset(0,3),
                        spreadRadius: 1,
                      )],
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff1c60ff),
                    ),
                    child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));}, child: Text("Login",style: TextStyle(color: Colors.white),))),
              ),
            ),
            SizedBox(height: 160,),
            Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                            color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(text: ' Register',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pop(context);
                                }
                          )
                        ]
                    ),
                  ),
                )
            )
          ],

        ),
      ),
    );
  }
}
