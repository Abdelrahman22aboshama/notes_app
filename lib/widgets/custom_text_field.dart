import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
final String hint ;
final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      cursorColor: Colors.cyanAccent,
      decoration: InputDecoration(
        hintText: hint,
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