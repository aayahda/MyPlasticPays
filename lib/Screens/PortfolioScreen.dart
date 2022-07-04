import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60,),
          Center(
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff001AFF), Color(0xffFF00A9),])),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('Assets/Akr.jpeg'),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Aadhya K Raj",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
          ),
          Center(child: Text("Kozhikode, Kerala",style: TextStyle(fontSize: 14,color: Colors.black45),)),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Level",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                    SizedBox(height: 10,),
                    Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                  ],
                ),
                Column(
                  children: [
                    Text("Balance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                    SizedBox(height: 10,),
                    Text("30",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                  ],
                ),
                Column(
                  children: [
                    Text("Rank",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                    SizedBox(height: 10,),
                    Text("121",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 50, left: 50),
            child: Divider(color: Colors.black26),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10),
            child: Text("History",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87),),
          )
        ],
      ),
    );
  }
}
