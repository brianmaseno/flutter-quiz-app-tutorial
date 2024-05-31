import 'package:flutter/material.dart';

class Test6 extends StatefulWidget {
  const Test6({super.key});

  @override
  State<Test6> createState() => _Test6State();
}

class _Test6State extends State<Test6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Choose Category'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: <Widget>[
                  CategoryCard(
                    title: 'Math',
                    quizzes: 21,
                    color: Colors.redAccent,
                    icon: Icons.calculate,
                  ),
                  CategoryCard(
                    title: 'Sports',
                    quizzes: 18,
                    color: Colors.blueAccent,
                    icon: Icons.sports,
                  ),
                  CategoryCard(
                    title: 'Music',
                    quizzes: 15,
                    color: Colors.purpleAccent,
                    icon: Icons.music_note,
                  ),
                  CategoryCard(
                    title: 'Science',
                    quizzes: 12,
                    color: Colors.greenAccent,
                    icon: Icons.science,
                  ),
                  CategoryCard(
                    title: 'Art',
                    quizzes: 18,
                    color: Colors.orangeAccent,
                    icon: Icons.brush,
                  ),
                  CategoryCard(
                    title: 'Travel',
                    quizzes: 14,
                    color: Colors.tealAccent,
                    icon: Icons.travel_explore,
                  ),
                  CategoryCard(
                    title: 'History',
                    quizzes: 7,
                    color: Colors.brown,
                    icon: Icons.history_edu,
                  ),
                  CategoryCard(
                    title: 'Tech',
                    quizzes: 8,
                    color: Colors.grey,
                    icon: Icons.computer,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle next button press
                },
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final int quizzes;
  final Color color;
  final IconData icon;

  CategoryCard({
    required this.title,
    required this.quizzes,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle card tap
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$quizzes Quizzes',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}