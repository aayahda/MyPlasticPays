import 'package:flutter/material.dart';


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
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Balance",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
            Text("30 Points",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color: Colors.black),),
            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  Container(height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                    // color: Colors.white, //background color of box
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 30.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        0, // Move to right 10  horizontally
                        10, // Move to bottom 10 Vertically
                      ),
                    )
                  ],)),
                  Container(height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 50.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              15, // Move to right 10  horizontally
                              15, // Move to bottom 10 Vertically
                            ),
                          )
                        ],)),
                  Container(height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 50.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              15, // Move to right 10  horizontally
                              15, // Move to bottom 10 Vertically
                            ),
                          )
                        ],)),
                  Container(height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 50.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              15, // Move to right 10  horizontally
                              15, // Move to bottom 10 Vertically
                            ),
                          )
                        ],)),
                  Container(height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 50.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              15, // Move to right 10  horizontally
                              15, // Move to bottom 10 Vertically
                            ),
                          )
                        ],)),
                  Container(height: 120,width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 50.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              15, // Move to right 10  horizontally
                              15, // Move to bottom 10 Vertically
                            ),
                          )
                        ],)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
