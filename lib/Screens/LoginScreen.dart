import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Components/textfield.dart';
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
            SizedBox(height: 80,),
            Text("Welcome back!",style: TextStyle(color:Color(0xff1c60ff),fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Text("We're super excited to have you on board!\n Login to track your progress",style: TextStyle(color: Colors.black54),),
            SizedBox(height: 35,),
            TextInpField("Email", TextInputType.emailAddress, false),
            SizedBox(height: 15,),
            TextInpField("Password", TextInputType.none, true),
            SizedBox(height: 100,),
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
                    child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));}, child: Text("Login",style: TextStyle(color: Colors.white),))),
              ),
            ),
            SizedBox(height: 140,),
            Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                            color: Colors.black, fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(text: ' Register',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 12),
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
