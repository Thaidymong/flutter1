import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String iconImagePath;
  final String categoryName;

  CategoryCard({
    required this.iconImagePath,
    required this.categoryName,
  });

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(
              widget.iconImagePath,
              height: 30,
            ),
            SizedBox(width: 10), // Added spacing between image and text
            Text(widget.categoryName),
          ],
        ),
      ),
    );
  }
}
