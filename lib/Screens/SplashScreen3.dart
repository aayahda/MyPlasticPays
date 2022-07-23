import 'package:flutter/material.dart';
import 'package:myplasticpays/Screens/RegistrationScreen.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Container(
            height: 280,
            width: 280,
            child: Image.asset("Assets/Taking care of the Earth.gif"),
          ),
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Text("Add your friends and lets save the earth together !",textAlign:TextAlign.center,style: TextStyle(color:Color(0xff1c60ff),fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 15),
            child: Text("add your friends and see who gets to the leaderboard first",textAlign: TextAlign.center,style: TextStyle(color: Color(0x86000000),fontSize: 17),),
          ),
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.only(left: 140,right: 140),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x49000000)
                  ),
                  child: Text(" .",style: TextStyle(color: Color(0x86000000)),),
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x49000000)
                  ),
                  child: Text(" .",style: TextStyle(color: Color(0x86000000)),),
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff1c60ff)
                  ),
                  child: Text(" .",style: TextStyle(color: Color(0xff1c60ff)),),
                ),
              ],
            ),
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(right: 40,left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child: Text("Skip",style: TextStyle(color:Color(0xff1c60ff)))),
                Container(
                    width: 120,
                    height: 40,
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
                    child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));}, child: Text("Next",style: TextStyle(color: Colors.white),))),
              ],

            ),
          )
        ],
      ),
    );
  }
}
