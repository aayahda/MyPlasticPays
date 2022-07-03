import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  MainScreen({required this.profilename,required this.token,required this.pageindex});
  late String profilename;
  late String token;
  int pageindex;


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> pageList;
  void initState() {
    super.initState();
    pageList=<Widget>[
      ];
  }

  // int pageIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[widget.pageindex],
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
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: widget.pageindex,
            onTap: (value){
              setState((){
                widget.pageindex=value;

              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home",),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.creditcard), label: "Wallet",),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_dash), label: "Menu"),
            ],
          ),
        ),
      ),
    );
  }
}