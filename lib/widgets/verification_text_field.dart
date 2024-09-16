import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class VCTextField extends StatelessWidget {
   VCTextField({super.key});
  final TextEditingController verificationCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 50,
      child: TextFormField(
        onFieldSubmitted: (data){
          print(data);
        },
        controller: verificationCode,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        cursorColor: Colors.white,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: '0',
          hintStyle: const TextStyle(color: Colors.white70),
          fillColor: kBasicColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}