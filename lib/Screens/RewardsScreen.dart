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
        padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
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
                    child: Container(margin: EdgeInsets.all(10),
                        height: 120,width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: kElevationToShadow[9],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6,bottom: 6),
                    child: Container(margin: EdgeInsets.all(10),
                        height: 120,width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: kElevationToShadow[9],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(margin: EdgeInsets.all(10),
                        height: 120,width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: kElevationToShadow[9],
                        )),
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
