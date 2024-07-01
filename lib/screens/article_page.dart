import 'package:flutter/material.dart';
import 'detail_article.dart'; // Mengimpor halaman detail artikel

class ArticlePage extends StatelessWidget {
  final String category;

  ArticlePage(this.category);

  @override
  Widget build(BuildContext context) {
    // Placeholder list of articles (replace with actual data from API)
    List<Map<String, String>> articles = [
      {
        'title': 'Anggrek Bulan (Phalaenopsis amabilis)',
        'content': 'Detail about Anggrek Bulan',
        'plantCare':
            'Anggrek Bulan membutuhkan cahaya yang terang namun tidak langsung terkena sinar matahari penuh. Tempatkan di tempat yang terkena cahaya indirek atau di dekat jendela yang memiliki gorden.',
        'description':
            'Anggrek Bulan atau Phalaenopsis adalah salah satu genus anggrek yang terkenal dengan bunganya yang besar, berwarna-warni, dan tahan lama. Anggrek ini berasal dari daerah tropis Asia Tenggara dan merupakan pilihan populer dalam hortikultura rumahan karena kemudahan perawatannya.'
      },
      {
        'title': 'Anggrek Hitam (Coelogyne pandurata)',
        'content': 'Detail about Anggrek Hitam...',
        'plantCare': 'Water daily. Prefers humid environment.',
        'description': 'Anggrek Hitam is known for its unique black flowers.'
      },
      {
        'title': 'Bugenvil (Bougainvillea)',
        'content': 'Detail about Bugenvil...',
        'plantCare':
            'Water when the top inch of soil is dry. Prefers full sun.',
        'description':
            'Bugenvil is a popular ornamental plant with vibrant flowers.'
      },
      {
        'title': 'Bugenvil (Bougainvillea)',
        'content': 'Detail about Bugenvil...',
        'plantCare':
            'Water when the top inch of soil is dry. Prefers full sun.',
        'description':
            'Bugenvil is a popular ornamental plant with vibrant flowers.'
      },
      {
        'title': 'Bugenvil (Bougainvillea)',
        'content': 'Detail about Bugenvil...',
        'plantCare':
            'Water when the top inch of soil is dry. Prefers full sun.',
        'description':
            'Bugenvil is a popular ornamental plant with vibrant flowers.'
      },
      {
        'title': 'Bugenvil (Bougainvillea)',
        'content': 'Detail about Bugenvil...',
        'plantCare':
            'Water when the top inch of soil is dry. Prefers full sun.',
        'description':
            'Bugenvil is a popular ornamental plant with vibrant flowers.'
      },
      {
        'title': 'Bugenvil (Bougainvillea)',
        'content': 'Detail about Bugenvil...',
        'plantCare':
            'Water when the top inch of soil is dry. Prefers full sun.',
        'description':
            'Bugenvil is a popular ornamental plant with vibrant flowers.'
      },
      {
        'title': 'Bugenvil (Bougainvillea)',
        'content': 'Detail about Bugenvil...',
        'plantCare':
            'Water when the top inch of soil is dry. Prefers full sun.',
        'description':
            'Bugenvil is a popular ornamental plant with vibrant flowers.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Articles'),
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
                articles[index]['title']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle:
                  Text('This is a brief description of the article content.'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to detailed article page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailPage(
                      articleTitle: articles[index]['title']!,
                      articleContent: articles[index]['content']!,
                      plantCare: articles[index]['plantCare']!,
                      plantDescription: articles[index]['description']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
