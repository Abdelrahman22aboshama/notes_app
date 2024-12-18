import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.Title, required this.icon});
final String Title ;
final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(Title ,style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomIcon(icon: icon,),
      ],
    );
  }
}