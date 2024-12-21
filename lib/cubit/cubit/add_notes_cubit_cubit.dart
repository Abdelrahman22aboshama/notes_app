import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());

  addnote(NotesModel note)async{
   emit(AddNotesCubitLoading());

   try {
  var NotesBox =  Hive.box('NotesBox');
  
  emit(AddNotesCubitSuccess());
  
  await NotesBox.add(note);
} catch (e) {
  AddNotesCubitFailure(e.toString());
}
  


}}

