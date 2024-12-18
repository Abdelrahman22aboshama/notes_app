import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NotesModalBottomSheet extends StatelessWidget {
  const NotesModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [ 
        
            SizedBox(height: 32,),
            CustomTextField(hint: 'title',),
            SizedBox(height: 16, ),
            CustomTextField(hint: 'content',maxLines: 5,),
            SizedBox(height: 16,),
            CustomButton(),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}