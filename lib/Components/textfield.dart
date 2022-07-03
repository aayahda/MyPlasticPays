import 'package:flutter/material.dart';


class TextInpField extends StatelessWidget {
  TextInpField(@required this.hint,@required this.keyboard,@required this.obscure);
  String hint;
  TextInputType keyboard;
  bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF5F6F8),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextFormField(
          obscureText: obscure,
          keyboardType: keyboard,
          cursorColor: Color(0xff1c60ff),
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.black54,
            ),
            hintText: hint,
            border: InputBorder.none,


          ),
        ),
      ),
    );
  }
}
