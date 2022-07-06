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
        padding: const EdgeInsets.only(top: 50,left: 20,right: 10),
        child: Column(
          children: [
            Text("Your Balance",style: TextStyle(fontSize: 20,),),
          ],
        ),
      ),
    );
  }
}
