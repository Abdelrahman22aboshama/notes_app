import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context, index) {
      
      return const Padding(
        padding: EdgeInsets.symmetric(vertical:8 ),
        child: NoteItem(),
      );
    },);
  }
}