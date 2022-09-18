import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';


class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Your Balance",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("30 Points",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color: Colors.black),),
            ),
            // SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                        height: 120,width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: kElevationToShadow[9],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Container(height: 80,width: 80,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Image.asset("Assets/Mcd.png"),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("McDonalds"),
                                Expanded(
                                  child: RichText(
                                      text: TextSpan(text:"10%",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),
                                      children: <TextSpan>[
                                        TextSpan(text: ' OFF',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 12),
                                        )
                                      ]),),
                                ),
                              ],),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: DottedLine(
                              dashColor: Colors.black12,
                              lineThickness: 2.0,
                              direction: Axis.vertical,
                              dashLength: 6.0,
                              dashGapLength: 6.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
                            child: Column(
                              children: [Text("80",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),Text("Points")],
                            ),
                          )
                          
                        ],
                      ),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: kElevationToShadow[9],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          children: [
                            Container(height: 80,width: 80,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Image.asset("Assets/Swiggy.webp"),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Swiggy"),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(text:"40%",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),
                                            children: <TextSpan>[
                                              TextSpan(text: ' OFF',
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 12),
                                              )
                                            ]),),
                                    ),
                                  ],),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                              child: DottedLine(
                                dashColor: Colors.black12,
                                lineThickness: 2.0,
                                direction: Axis.vertical,
                                dashLength: 6.0,
                                dashGapLength: 6.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
                              child: Column(
                                children: [Text("50",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),Text("Points")],
                              ),
                            )

                          ],
                        ),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: kElevationToShadow[9],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          children: [
                            Container(height: 80,width: 80,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Image.asset("Assets/Dominos.png"),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dominos"),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(text:"5%",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),
                                            children: <TextSpan>[
                                              TextSpan(text: ' OFF',
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 12),
                                              )
                                            ]),),
                                    ),
                                  ],),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                              child: DottedLine(
                                dashColor: Colors.black12,
                                lineThickness: 2.0,
                                direction: Axis.vertical,
                                dashLength: 6.0,
                                dashGapLength: 6.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
                              child: Column(
                                children: [Text("30",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),Text("Points")],
                              ),
                            )

                          ],
                        ),
                      ),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
