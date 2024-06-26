import 'package:flutter/material.dart';
import 'package:recipe_app/JsonModels/note_model.dart';
import 'package:recipe_app/SQLite/sqlite.dart';

class CreateRecipe extends StatefulWidget {
  const CreateRecipe({Key? key}) : super(key: key);

  @override
  State<CreateRecipe> createState() => _CreateRecipeState();
}

class _CreateRecipeState extends State<CreateRecipe> {
  final title = TextEditingController();
  final content = TextEditingController();
  final instructions = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final db = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Recipe"),
        actions: [
          IconButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  db
                      .createNote(NoteModel(
                          noteTitle: title.text,
                          noteContent: content.text,
                          procedure: instructions.text,
                          createdAt: DateTime.now().toIso8601String()))
                      .whenComplete(() {
                    Navigator.of(context).pop(true);
                  });
                }
              },
              icon: const Icon(Icons.check))
        ],
      ),
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: title,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Recipe name is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: ("Recipe Name"),
                  ),
                ),
                TextFormField(
                  maxLines: 5,
                  controller: content,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ingredients is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: ("Ingredients"),
                  ),
                ),
                TextFormField(
                  maxLines: 5,
                  controller: instructions,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Procedures is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: ("Procedures"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
