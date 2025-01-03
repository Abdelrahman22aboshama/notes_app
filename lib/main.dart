import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/cubit/add_notes_cubit_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
 await Hive.initFlutter();
 Bloc.observer = SimpleBlocObserver();
 await Hive.openBox('NotesBox');
 Hive.registerAdapter(NotesModelAdapter());
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
       BlocProvider(
        create: (context) => AddNotesCubitCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false, 
        theme: ThemeData(brightness: Brightness.dark,
        fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}