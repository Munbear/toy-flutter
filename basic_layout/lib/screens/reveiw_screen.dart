import 'package:basic_layout/widgets/review_widgets/save_card.dart';
import 'package:basic_layout/widgets/review_widgets/save_course.dart';
import 'package:basic_layout/widgets/review_widgets/vocabulary_card.dart';
import 'package:flutter/material.dart';

class ReviewTanScreen extends StatefulWidget {
  const ReviewTanScreen({Key? key}) : super(key: key);

  @override
  State<ReviewTanScreen> createState() => _ReviewTanScreenState();
}

class _ReviewTanScreenState extends State<ReviewTanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
              SizedBox(height: 10),
              VocabularyCard(),
              SizedBox(height: 8),
              SaveCard(),
              SizedBox(height: 8),
              SaveCourse(),
            ],
          ),
        ),
      ),
    );
  }
}
