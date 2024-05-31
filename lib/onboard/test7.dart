import 'package:flutter/material.dart';

class Test7 extends StatefulWidget {
  const Test7({super.key});

  @override
  State<Test7> createState() => _Test7State();
}

class _Test7State extends State<Test7> {
  final Map<String, List<String>> subjectsAndTopics = {
    'Math': ['Algebra', 'Geometry', 'Calculus'],
    'Science': ['Physics', 'Chemistry', 'Biology'],
    'History': ['Ancient', 'Medieval', 'Modern'],
  };

  String? selectedSubject;
  List<String> topics = [];

  void _onSubjectSelected(String? subject) {
    setState(() {
      selectedSubject = subject;
      topics = subjectsAndTopics[subject] ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Subject'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              hint: Text('Select Subject'),
              value: selectedSubject,
              onChanged: _onSubjectSelected,
              items: subjectsAndTopics.keys
                  .map((subject) => DropdownMenuItem<String>(
                value: subject,
                child: Text(subject),
              ))
                  .toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Topics:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: topics
                  .map((topic) => ElevatedButton(
                onPressed: () {
                  // Handle topic selection
                  print('Selected topic: $topic');
                },
                child: Text(topic),
              ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

}