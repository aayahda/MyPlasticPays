import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

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
            Text("Create New Account",style: TextStyle(color:Color(0xff1c60ff),fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Text("Create an account so you can redeem your rewards ",style: TextStyle(color: Colors.black54),),
            SizedBox(height: 35,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  cursorColor: Color(0xff1c60ff),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    hintText: 'Username',
                    border: InputBorder.none,


                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Color(0xff1c60ff),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    hintText: 'Email',
                    border: InputBorder.none,


                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  cursorColor: Color(0xff1c60ff),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    hintText: 'Password',
                    border: InputBorder.none,


                  ),
                ),
              ),
            ),
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
                    child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));}, child: Text("Create Account",style: TextStyle(color: Colors.white),))),
              ),
            ),


          ],

        ),
      ),
    );
  }
}
