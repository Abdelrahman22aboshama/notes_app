import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NotesModalBottomSheet extends StatelessWidget {
  const NotesModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField(),
        ],
      ),
    );
  }
}