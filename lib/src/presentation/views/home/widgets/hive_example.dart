import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:spark_taxi/src/domain/models/hive/note.dart';

class HiveExamplePage extends StatefulWidget {
  const HiveExamplePage({super.key});

  @override
  State<HiveExamplePage> createState() => _HiveExamplePageState();
}

class _HiveExamplePageState extends State<HiveExamplePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  createBox() async {}

  @override
  void initState() {
    createBox();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(hintText: "title"),
              controller: titleController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(hintText: "description"),
              controller: descriptionController,
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                var box = await Hive.openBox('notes');

                var note = Note(
                    description: descriptionController.text,
                    title: titleController.text);
                box.add(note);
                Note noteGetHive = box.get("notes");
                print(noteGetHive.title);
                print(noteGetHive.description);
              },
              child: const Text("save")),
          ElevatedButton(onPressed: () async {}, child: const Text("check")),
        ],
      ),
    );
  }
}
