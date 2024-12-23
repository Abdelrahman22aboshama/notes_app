import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubit/cubit/add_notes_cubit_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class NotesModalBottomSheet extends StatelessWidget {
  const NotesModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubitCubit, AddNotesCubitState>(
          listener: (context, state) {
            if(state is AddNotesCubitFailure){
              print('failed ${state.errmsg}');
            }
            if(state is AddNotesCubitSuccess){
              Navigator.pop(context);
            }

          },
          builder: (context, state) {
            return ModalProgressHUD
            (
              inAsyncCall: state is AddNotesCubitLoading ? true : false,
              child: const AddNoteForm()
              
            );
          },
        ),
      ),
    );
  }
}
