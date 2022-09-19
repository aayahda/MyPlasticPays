import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'MainScreen.dart';
import 'RegistrationScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            // TextInpField("Email", TextInputType.emailAddress, false),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Center(
                  child: TextFormField(
                    onChanged: (value){
                      email=value;
                    },
                    // controller: ,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Color(0xff1c60ff),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      label: Text("Email"),
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Center(
                  child: TextFormField(
                    onChanged: (value){
                      password=value;
                    },
                    // controller: ,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xff1c60ff),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      label: Text("Password"),
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),
            ),
            // TextInpField("Password", TextInputType.text, true),
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
                    child: TextButton(onPressed: ()async{
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (user != null) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => MainScreen()));
                        }
                      }
                      catch(e){print(e);
                      showDialog(context: context,builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 300),
                          child: AlertDialog(
                            title: Center(child: const Text('User inexistent!')),
                            content: Center(child: const Text('The user does not exists',textAlign: TextAlign.center,)),
                            // actions: <Widget>[
                            //   TextButton(
                            //     child: const Text('Approve'),
                            //     onPressed: () {
                            //       Navigator.of(context).pop();
                            //     },
                            //   ),
                            // ],
                          ),
                        );
                      } );
                      }

                      }, child: Text("Login",style: TextStyle(color: Colors.white),))),
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
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                            print("tapped");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                                  // Navigator.pop(context);
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
