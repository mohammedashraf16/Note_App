import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: Colors.cyanAccent,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.purple),
          border:buildBorder(),
          enabledBorder:buildBorder(),
          focusedBorder: buildBorder(Colors.cyanAccent)
      ),
    );
  }
}