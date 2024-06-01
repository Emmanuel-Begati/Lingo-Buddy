import 'package:flutter/material.dart';

void main() => runApp(const LingoBuddyApp());

class LingoBuddyApp extends StatelessWidget {
  const LingoBuddyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LingoBuddy'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Hello Linguist!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.grey,
                      fontFamily: 'IndieFlower',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    _buildLanguageCard('English', Colors.blue),
                    _buildLanguageCard('Spanish', Colors.green),
                    _buildLanguageCard('French', Colors.orange),
                    _buildLanguageCard('German', Colors.purple),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Featured Courses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCourseCard('Basic English', 'assets/course1.jpg'),
                      _buildCourseCard('Conversational Spanish', 'assets/course2.jpg'),
                      _buildCourseCard('French for Beginners', 'assets/course3.jpg'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                _buildActivityTile('Lesson 1 Completed', 'Basic English', Icons.check_circle),
                _buildActivityTile('Quiz Attempted', 'Conversational Spanish', Icons.quiz),
                _buildActivityTile('Lesson 2 Unlocked', 'French for Beginners', Icons.lock_open),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.red[600],
          onTap: (int index) {
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.mic),
          onPressed: () {
          },
          backgroundColor: Colors.red[600],
        ),
        backgroundColor: Colors.blue[100],
      ),
    );
  }
}


Widget _buildCourseCard(String title, String imagePath) {
  return Container(
    width: 200,
    margin: const EdgeInsets.only(right: 10),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 100,
            width: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildActivityTile(String title, String subtitle, IconData icon) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    subtitle: Text(subtitle),
  );
}