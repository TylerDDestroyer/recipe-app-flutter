class NoteModel {
  final int? noteId;
  final String noteTitle;
  final String noteContent;
  final String procedure;
  final String createdAt;

  NoteModel({
    this.noteId,
    required this.noteTitle,
    required this.noteContent,
    required this.procedure,
    required this.createdAt,
  });

  factory NoteModel.fromMap(Map<String, dynamic> json) => NoteModel(
        noteId: json["noteId"],
        noteTitle: json["noteTitle"],
        noteContent: json["noteContent"],
        procedure: json["procedure"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toMap() => {
        "noteId": noteId,
        "noteTitle": noteTitle,
        "noteContent": noteContent,
        "procedure": procedure,
        "createdAt": createdAt,
      };
}
