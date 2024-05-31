import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  State<Test2> createState() => _Test2State();
}
 
 class _Test2State extends State<Test2> {
    @override
    Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Play & Win',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'De Finibus Bonorum et Malorum for use',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 24),
            Text(
              'Top Quiz Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  CategoryCard(categoryName: 'Mathematics'),
                  CategoryCard(categoryName: 'Science'),
                  CategoryCard(categoryName: 'Drama'),
                  CategoryCard(categoryName: 'Art & Craft'),
                  CategoryCard(categoryName: 'Knowledge'),
                  CategoryCard(categoryName: 'Language'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;

  CategoryCard({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/quiz');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
    }
  }

  class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematics Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Question 06/20',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'The graphs of the two linear equations ax + by = c and bx - ay = c, where a, b, and c are not all equal to zero.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: [
                  AnswerOption(text: 'Are parallel'),
                  AnswerOption(text: 'Perpendicular', isCorrect: true),
                  AnswerOption(text: 'Intersect at two points'),
                  AnswerOption(text: 'Intersect at one point'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/result');
              },
              child: Text('Next'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerOption extends StatelessWidget {
  final String text;
  final bool isCorrect;

  AnswerOption({required this.text, this.isCorrect = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: Radio(
        value: isCorrect,
        groupValue: true,
        onChanged: (bool? value) {},
      ),
    );
  }
}

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


