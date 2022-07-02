import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 70,),
          Container(
            height: 250,
            width: 250,
            child: Image.asset("Assets/Make it rain.gif"),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Text("Lets clean the environment and earn awesome rewards !",textAlign:TextAlign.center,style: TextStyle(color:Color(0xff1c60ff),fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
            child: Text("win lots of rewards just by depositing plastic bottles",textAlign: TextAlign.center,style: TextStyle(color: Color(0x86000000),fontSize: 15),),
          ),
          SizedBox(height: 40,),
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
                    color: Color(0xff1c60ff)
                  ),
                  child: Text(" .",style: TextStyle(color: Color(0xff1c60ff)),),
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
                      color: Color(0x49000000)
                  ),
                  child: Text(" .",style: TextStyle(color: Color(0x86000000)),),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
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
                    child: TextButton(onPressed: (){}, child: Text("Next",style: TextStyle(color: Colors.white),))),
              ],

            ),
          )
        ],
      ),
    );
  }
}
