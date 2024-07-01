import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Manage Articles',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminArticlePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Manage Articles',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Icon(Icons.article, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'View Most Viewed Articles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MostViewedArticlesPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'View Most Viewed Articles',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Icon(Icons.trending_up, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.purple,
      ),
    );
  }
}

class AdminArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> articles = [
      'Anggrek Bulan',
      'Bunga Mawar',
      'Bunga Matahari',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Articles'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              title: Text(
                articles[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Deleted ${articles[index]}'),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class MostViewedArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> mostViewedArticles = [
      'Bunga Matahari',
      'Bunga Mawar',
      'Bunga Anggrek Bulan',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Most Viewed Articles'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: mostViewedArticles.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              title: Text(
                mostViewedArticles[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Views: 100'), // Replace with actual views count
              leading: Icon(Icons.article, color: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AdminDashboard(),
  ));
}
