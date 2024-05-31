import 'package:flutter/material.dart';

// class CategoryCard extends StatefulWidget {
//   const CategoryCard({super.key});

//   @override
//   State<CategoryCard> createState() => _CategoryCardState();
// }

class QuizResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.emoji_events,
                color: Colors.orange,
                size: 100,
              ),
              SizedBox(height: 16),
              Text(
                'Congratulations!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Your score',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '20 / 20',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 16),
              Text(
                'Earned Coins',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '500',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.amber),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                child: Text('Share Results'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Text('Take New Quiz'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}