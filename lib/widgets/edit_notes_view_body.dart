import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            Title: 'Edit Notes',
            icon: Icons.check ,),
            SizedBox(height: 50,),
            CustomTextField(hint: 'title'),
            SizedBox(height: 16,),
            CustomTextField(hint: 'content', maxLines: 5,)
        ],
      ),
    );
  }
}