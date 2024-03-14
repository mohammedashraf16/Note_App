import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines=1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      cursorColor: Colors.cyanAccent,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.purple),
          border:buildBorder(),
          enabledBorder:buildBorder(),
          focusedBorder: buildBorder(Colors.cyanAccent)
      ),
    );
  }
}
OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(
        color: color ?? Colors.purple,
      )
  );
}