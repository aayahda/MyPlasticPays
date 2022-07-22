import 'package:flutter/material.dart';

class BinLocation extends StatefulWidget {
  const BinLocation({Key? key}) : super(key: key);

  @override
  State<BinLocation> createState() => _BinLocationState();
}

class _BinLocationState extends State<BinLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,left: 10),
                  child: Text("Welcome Aadhya,",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18,fontStyle: FontStyle.italic),),
                ),
                Text("30 Points",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color: Colors.black),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 60,right: 140,bottom: 10),
              child: Text("This week's reward is sponsored by ",style:TextStyle(fontStyle: FontStyle.italic,color: Colors.black45)),
            ),
            Container(margin: EdgeInsets.all(10),
                height: 120,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: kElevationToShadow[9],
                ),
              child: Image.asset("Assets/starbucks.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,top: 25),
              child: Text("Locate the bin ! ",style:TextStyle(fontStyle: FontStyle.italic,color: Colors.black45)),
            ),

          ],

        ),
      ),
    );
  }
}

