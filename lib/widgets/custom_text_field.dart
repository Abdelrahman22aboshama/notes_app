import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: Colors.cyanAccent,
      decoration: InputDecoration(
        hintText: 'title',
        hintStyle: TextStyle(color: Colors.cyanAccent),
        border :  BuildBorder()  ,
        focusedBorder: BuildBorder(Colors.cyanAccent),
        enabledBorder: BuildBorder(),
      ),
    );

  }

}
OutlineInputBorder BuildBorder([Color]){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Color ?? Colors.white)
  );
  

}