import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 36),
              CustomTextField(hint: "Title"),
              SizedBox(
                height: 16,
              ),
              CustomTextField(hint: "Content", maxLines: 5),
              SizedBox(
                height: 32,
              ),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}


