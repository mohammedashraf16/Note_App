import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
      children: [
        SizedBox(height: 40,),
        CustomAppBar(
          title: "Edit Note",
          icon: Icons.check,
        ),
      ],
      ),
    );
  }
}
