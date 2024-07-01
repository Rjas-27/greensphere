import 'package:flutter/material.dart';
import 'article_page.dart'; // Mengimpor artikel halaman

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Greensphere'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Article',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CategoryCard(
                    'Succulents & cacti', 'assets/succulents_cacti.jpg'),
                CategoryCard('Flowering plants', 'assets/flowering_plants.jpg'),
                CategoryCard('Foliage plants', 'assets/foliage_plants.jpg'),
                CategoryCard('Trees', 'assets/trees.jpg'),
                CategoryCard('Shrubs', 'assets/shrubs.jpg'),
                CategoryCard('Vegetables', 'assets/vegetables.jpg'),
                CategoryCard('Herbs', 'assets/herbs.jpg'),
                CategoryCard('Mushrooms', 'assets/mushrooms.jpg'),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Try Greensphere Premium for free',
                    style: TextStyle(fontSize: 12),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Claim your offer now'),
                  ),
                ],
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
  final String imagePath;

  CategoryCard(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ArticlePage(title)),
        );
      },
      child: Card(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Image.asset(imagePath, height: 100, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
