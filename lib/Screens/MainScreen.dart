import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myplasticpays/Screens/BinLocation.dart';
import 'package:myplasticpays/Screens/Leaderboard.dart';
import 'package:myplasticpays/Screens/PortfolioScreen.dart';
import 'package:myplasticpays/Screens/QRScreen.dart';
import 'package:myplasticpays/Screens/RewardsScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MainScreen extends StatefulWidget {


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> pageList;

  // final _auth =FirebaseAuth.instance;
  // FirebaseUser user = FirebaseAuth.instance.currentUser;

  // void getCurrentUser()async{
  //   final user =await _auth.currentUser();
  //   if(user!=null){
  //     loggedInUser =user;
  //     print(loggedInUser.email)
  //
  //   }
  // }

  void initState() {
    super.initState();
    pageList=<Widget>[
      BinLocation(),
      Leaderboard(),
      QRScreen(),
      RewardsScreen(),
      PortfolioScreen(),

      ];
  }

  int currentIndex=4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Color(0x22000000), spreadRadius: 0.1, blurRadius: 50,),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            elevation: 10,
            selectedItemColor: Color(0xff1c60ff),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (index){
              setState((){
                currentIndex=index;
              });
            },
            iconSize: 30,
            type: BottomNavigationBarType.fixed,
            items:  [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.location_solid), label: "Home",),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.rosette), label: "Home",),
              BottomNavigationBarItem(
                icon: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Color(0xff1c60ff),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Icon(CupertinoIcons.qrcode_viewfinder,color: Colors.white,))), label: "QR",),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.money_dollar_circle_fill), label: "Rewards"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_circle_fill), label: "Portfolio",),
            ],
          ),
        ),
      ),
    );
  }
}