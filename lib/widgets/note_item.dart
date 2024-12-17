import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amber,
      ),
      child:  Padding(
        padding: const EdgeInsets.only(top: 18 , bottom: 18, left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              trailing: 
              IconButton(onPressed:(){} , icon:const Icon(Icons.delete),color: Colors.black,iconSize: 25,),
              title: const Text('flutter tips',style: TextStyle(
                fontSize: 26,
                color: Colors.black
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text('build your career with aboshama',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.6)
                ),),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Text('may,16,2002',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
            )
          ],
        ),
      ),
    );
  }
}