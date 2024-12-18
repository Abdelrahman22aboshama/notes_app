import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child:
       IconButton(onPressed:(){},
       icon: Icon(icon),
       )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      height: 40,
      width: 40,
    );
  }
}
