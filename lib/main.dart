import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/view/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            fontFamily: "assets/fonts/Poppins-Regular.ttf"),
        home: const NotesView(),
      ),
    );
  }
}
