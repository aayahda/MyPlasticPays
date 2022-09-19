import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'MainScreen.dart';

class RegistrationScreen extends StatefulWidget {

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth=FirebaseAuth.instance;
  late String email;
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:15,left: 35,right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120,),
            Text("Create New Account",style: TextStyle(color:Color(0xff1c60ff),fontSize: 27,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Text("Create an account so you can redeem your rewards ",style: TextStyle(color: Colors.black54,fontSize: 17),),
            SizedBox(height: 35,),
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
                      username=value;
                    },
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xff1c60ff),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      label: Text("Username"),
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),
            ),
            // TextInpField("Username", TextInputType.text, false,),
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
                      email=value;
                    },
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
            // TextInpField("Email", TextInputType.emailAddress, false),
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
            SizedBox(height: 140,),
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
                      try{final newUser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                      if(newUser!=null){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                      }}
                      catch(e){print(e);}
                      },
                        child: Text("Create Account",style: TextStyle(color: Colors.white),))),
              ),
            ),
            SizedBox(height: 140,),
            Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(text: ' Login',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                              recognizer:  new TapGestureRecognizer()
                                ..onTap = () {
                                  print("tapped");
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
