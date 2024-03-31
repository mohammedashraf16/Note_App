part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class AddNoteInitial extends NotesState {}
final class AddNoteLoading extends NotesState {}
final class AddNoteSuccess extends NotesState {
final  List<NoteModel> notes ;

  AddNoteSuccess(this.notes);
}
final class AddNoteFailuer extends NotesState {
  final String errorMessage;

  AddNoteFailuer({required this.errorMessage});
}
