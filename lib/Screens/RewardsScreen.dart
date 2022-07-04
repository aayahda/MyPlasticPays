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
      body: Column(
        children: [
          Expanded(child: Container(decoration:BoxDecoration(color: Color(0xff3609AE),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),bottomRight: Radius.circular(70))),width: double.infinity,height:double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top:40),
              child: Column(
                children: [
                  Text("LEADERBOARD",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 25,color: Colors.white),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("2",style: TextStyle(color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('Assets/Amal.jpeg'),
                              ),
                            ),
                            Text("2001",style: TextStyle(color: Colors.white),),
                            Text("Amal420",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            Text("1",style: TextStyle(color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('Assets/Dheeru.jpeg'),
                              ),
                            ),
                            Text("3897",style: TextStyle(color: Colors.white),),
                            Text("Dheeru21",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            Text("3",style: TextStyle(color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('Assets/Akr.jpeg'),
                              ),
                            ),
                            Text("1123",style: TextStyle(color: Colors.white),),
                            Text("Aadhya",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),)),
          SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
              child: ListView(
                children: [
                  Container(height: 70,width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xffFAF4FF)),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("4"),
                          Padding(
                            padding: const EdgeInsets.only(left:12,right: 12),
                            child: CircleAvatar(radius: 30,),
                          ),
                          Expanded(child:Text("Name")),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("869"),
                          )
                        ],
                      ),
                    )),
                  SizedBox(height: 10,),
                  Container(height: 70,width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xffFAF4FF)),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("5"),
                            Padding(
                              padding: const EdgeInsets.only(left:12,right: 12),
                              child: CircleAvatar(radius: 30,),
                            ),
                            Expanded(child:Text("Name")),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("869"),
                            )
                          ],
                        ),
                      )),
                  SizedBox(height: 10,),
                  Container(height: 70,width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xffFAF4FF)),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("6"),
                            Padding(
                              padding: const EdgeInsets.only(left:12,right: 12),
                              child: CircleAvatar(radius: 30,),
                            ),
                            Expanded(child:Text("Name")),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("869"),
                            )
                          ],
                        ),
                      )),
                  SizedBox(height: 10,),
                  Container(height: 70,width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xffFAF4FF)),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("7"),
                            Padding(
                              padding: const EdgeInsets.only(left:12,right: 12),
                              child: CircleAvatar(radius: 30,),
                            ),
                            Expanded(child:Text("Name")),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("869"),
                            )
                          ],
                        ),
                      )),
                  SizedBox(height: 10,),
                  Container(height: 70,width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xffFAF4FF)),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("9"),
                            Padding(
                              padding: const EdgeInsets.only(left:12,right: 12),
                              child: CircleAvatar(radius: 30,),
                            ),
                            Expanded(child:Text("Name")),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("869"),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
