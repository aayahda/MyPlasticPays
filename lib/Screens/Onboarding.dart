import 'package:flutter/material.dart';
import 'package:myplasticpays/Screens/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'RegistrationScreen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage=false;

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            onPageChanged: (index){
              setState(()=> isLastPage = index ==2);
            },
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children:[
                    SizedBox(height: 120,),
                  Container(
                    height: 280,
                    width: 280,
                    child: Image.asset("Assets/Make it rain.gif"),
                  ),
                  SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35),
                    child: Text("Lets clean the environment and earn awesome rewards !",textAlign:TextAlign.center,style: TextStyle(color:Color(0xff1c60ff),fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50,top: 15),
                    child: Text("win lots of rewards just by depositing plastic bottles",textAlign: TextAlign.center,style: TextStyle(color: Color(0x86000000),fontSize: 17),),
                  ),
               ] ),
              ),
              Container(color: Colors.white,
                child: Column(
                    children:[
                      SizedBox(height: 120,),
                      Container(
                        height: 280,
                        width: 280,
                        child: Image.asset("Assets/Winners.gif"),
                      ),
                      SizedBox(height: 80,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Text("Get your face on the leaderboard !",textAlign:TextAlign.center,style: TextStyle(color:Color(0xff1c60ff),fontSize: 30,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 15),
                        child: Text("get a chance to show up on the leaderboard by depositing more bottles",textAlign: TextAlign.center,style: TextStyle(color: Color(0x86000000),fontSize: 17),),
                      ),
                      SizedBox(height: 90,),
                    ]

              ),),
              Container(color: Colors.white,
                child: Column(
                    children:[
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
                    ]

                ),),

            ],
          ),
        ),
      bottomSheet: isLastPage?
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 120),

            child: Container(
                width: 250,
                height: 50,
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
                child: TextButton(onPressed: ()async{
                  final prefs= await SharedPreferences.getInstance();
                  prefs.setBool('showHome',true);
                  Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context)=>LoginScreen()));},
                    child: Text("Get Started!",style: TextStyle(color: Colors.white) ,))),
          ):
      Container(
        height: 200,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal:60 ),
        child: Column(
          children: [
            Center(child:SmoothPageIndicator(
              controller: controller, count: 3,
              effect:  WormEffect(
                  spacing:  10.0,
                  radius:  10.0,
                  dotWidth:  14.0,
                  dotHeight:  14.0,
                   dotColor:  Color(0x49000000),
                  activeDotColor:  Color(0xff1c60ff)
              ),
              onDotClicked: (index)=>controller.animateToPage(index, duration:Duration(milliseconds: 500),curve: Curves.easeInOut),
            )),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));}, child: Text("Skip",style: TextStyle(fontSize:17,color:Color(0xff1c60ff)))),
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
                    child: TextButton(onPressed: ()=>controller.nextPage(duration: const Duration(milliseconds: 500),curve: Curves.easeInOut), child: Text("Next",style: TextStyle(color: Colors.white),))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
