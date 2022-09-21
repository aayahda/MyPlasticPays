import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:myplasticpays/Screens/RewardsScreen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var point;
void main() => runApp(const MaterialApp(home: MyHome()));

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}



class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const QRScreen(),
            ));
          },
          child: const Text('qrView'),
        ),
      ),
    );
  }
}

class QRScreen extends StatefulWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  final _firestore = FirebaseFirestore.instance;
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 7, child: _buildQrView(context)),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // SizedBox(height: 20,),
                if (result != null)
                   Container(
                     height: 50,
                     width: 150,
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           primary: Color(0xff1c60ff),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20)
                           )
                       ),
                       child: Text("REDEEM NOW"),
                       onPressed: () async {
                         final QuerySnapshot resultdb =
                             await FirebaseFirestore.instance.collection('mpp').where('id', isEqualTo:
                             result!.code).get();
                         dynamic docRef= FirebaseFirestore.instance.collection('mpp').doc(result!.code).get().then((DocumentSnapshot doc){
                           final data = doc.data() as Map<String, dynamic>;
                           point=data["point"];
                         });

                         final List < DocumentSnapshot > documents = resultdb.docs;
                         if (documents.length > 0) {
                           //exists
                           showDialog(context: context, builder:(context) {
                             return Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 270),
                               child: AlertDialog(
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(30)
                                 ),
                                 title: Center(child: Text("Congratulations",
                                   style: TextStyle(fontSize: 15,
                                       fontWeight: FontWeight.bold),)),
                                 content: Column(
                                   children: [
                                     Container(
                                       width: 100,
                                       height: 100,
                                       child:Image.asset("Assets/surprise.png"),
                                     ),
                                     SizedBox(height: 20),
                                     Expanded(
                                       child:Text('${point}',
                                         style: TextStyle(fontSize: 14,color: Colors.black38),),
                                     )
                                   ],
                                 ),
                               ),
                             );
                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>RewardsScreen()));
                           },);
                           FirebaseFirestore.instance.collection('mpp').doc(result!.code).delete();

                         }
                         else{

                         showDialog(context: context, builder:(context) {

                           return Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 270),
                             child: AlertDialog(
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30)
                               ),
                             title: Center(child: Text("Congratulations",
                                 style: TextStyle(fontSize: 15,
                                     fontWeight: FontWeight.bold),)),
                               content: Column(
                                 children: [
                                   Container(
                                     width: 100,
                                     height: 100,
                                     child:Image.asset("Assets/surprise.png"),
                                   ),
                                   SizedBox(height: 20),
                                   Expanded(
                                     child: Text('10 points',
                                       style: TextStyle(fontSize: 14,color: Colors.black38),),
                                   )
                                 ],
                               ),
                         ),
                           );
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>RewardsScreen()));

                       },);

                         }

                       }
                   ),)
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                    // Text(
                    //     'Barcode Type: ${describeEnum(
                    //         result!.format)}   Data: ${result!.code}')

                else
                  const Text('Scan a code',style: TextStyle(fontSize: 20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1c60ff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              )
                          ),
                            onPressed: () async {
                              await controller?.toggleFlash();
                              setState(() {});
                            },
                            child: FutureBuilder(
                              future: controller?.getFlashStatus(),
                              builder: (context, snapshot) {
                                if(snapshot.data==false)
                                { return Icon(Icons.flash_off);}
                                else
                                  {
                                    return Icon(Icons.flash_on);
                                  }
                              },
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1c60ff),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            )
                        ),
                        onPressed: () async {
                          await controller?.pauseCamera();
                        },
                        child: Icon(CupertinoIcons.pause),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1c60ff),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            )
                        ),
                        onPressed: () async {
                          await controller?.resumeCamera();
                        },
                        child: Icon(CupertinoIcons.play),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1c60ff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                          onPressed: () async {
                            await controller?.flipCamera();
                            setState(() {});
                          },
                          child: FutureBuilder(
                            future: controller?.getCameraInfo(),
                            builder: (context, snapshot) {
                              return Icon(CupertinoIcons.switch_camera);
                            },
                          )),
                    )
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Color(0xff1c60ff),
          borderRadius: 30,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  // Future<bool> doesIdAlreadyExist(String id) async {
  //   final QuerySnapshot result = await FirebaseFirestore.instance
  //       .collection('mpp')
  //       .where('id', isEqualTo: id)
  //       .limit(1)
  //       .getDocuments();
  //   final List<DocumentSnapshot> documents = result.documents;
  //   return documents.length == 1;
  // }
}


// GestureDetector(
// onTap: () {
// showDialog(
// context: context,
// builder: (context) {
// return AlertDialog(
// shape: RoundedRectangleBorder(
// borderRadius:
// BorderRadius.circular(10)),
// title: const Center(
// child: Text(
// "Logout",
// style: TextStyle(
// fontSize: 15,
// fontWeight: FontWeight.bold),
// )),
// content: Container(
// height:
// getProportionateScreenHeight(60),
// child: Text(
// "Are you sure you want to logout from the app?",
// textAlign: TextAlign.center,
// )),
// actions: [
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Container(
// width: 135,
// height: 40,
// decoration: BoxDecoration(
// color: Color(0xff0063F5),
// borderRadius:
// BorderRadius.circular(5)),
// child: TextButton(
// onPressed: () {
// Navigator.pop(context);
// },
// child: Text(
// "No",
// style: TextStyle(
// color: Colors.white),
// ))),
// Container(
// width: 135,
// height: 40,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius:
// BorderRadius.circular(5)),
// child: TextButton(
// onPressed: () async {
// print("logg");
// final prefs =
// await SharedPreferences
//     .getInstance();
// final success = await prefs
//     .remove('token');
// final success2 = await prefs
//     .remove('username');
// final success3 = await prefs
//     .remove('phone');
//
// //go to login screen
// Navigator
//     .pushAndRemoveUntil(
// context,
// MaterialPageRoute(
// builder: (context) =>
// WelcomeScreen(),
// ),
// (route) => false);
// },
// child: Text(
// "Yes",
// style: TextStyle(
// color: Colors.white),
// )))
// ],
// )
// ],
// );
// });
//},


// Text('Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}',