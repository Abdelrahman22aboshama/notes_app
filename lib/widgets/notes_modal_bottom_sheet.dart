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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title , subtitle ;
  @override
  Widget build(BuildContext context) {
    GlobalKey <FormState> formKey= GlobalKey();
    AutovalidateMode autoValidateMode = AutovalidateMode.disabled ;
    return Form(
      key: formKey,
    
      child: Column(
        children: [ 
      
         const SizedBox(height: 32,),
          CustomTextField(hint: 'title',onSaved: (value) {
            title = value ;
          },),
         const SizedBox(height: 16, ),
          CustomTextField(hint: 'content',maxLines: 5,onSaved: (value) {
            subtitle = value ;
          },),
         const SizedBox(height: 16,),
          CustomButton(onTap: () {
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }
            else {
              autoValidateMode = AutovalidateMode.always ;
            }
          },),
          const SizedBox(height: 16,)
        ],
      ),
    );
  }
}