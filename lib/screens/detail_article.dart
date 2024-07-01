import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  final String articleTitle;
  final String articleContent;
  final String plantCare;
  final String plantDescription;

  const ArticleDetailPage({
    required this.articleTitle,
    required this.articleContent,
    required this.plantCare,
    required this.plantDescription,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articleTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              articleContent,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Plant Description',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(plantDescription),
            SizedBox(height: 10),
            Text(
              'Care Instructions',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(plantCare),
            SizedBox(height: 20),
            Text(
              'Comments',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CommentSection(),
          ],
        ),
      ),
    );
  }
}

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder for comment section
    List<String> comments = [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var comment in comments)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(comment),
          ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: 'Add a comment...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onSubmitted: (value) {
            // Handle comment submission
          },
        ),
      ],
    );
  }
}
