import 'package:flutter/material.dart';

import '../language/localization_util.dart';

class ExerciseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Exercise> exercises = [
      Exercise(title: l(context).chest, image: 'assets/chest/ch5.jpg', exe: [
        'assets/chest/ch1.jpg',
        'assets/chest/ch2.jpg',
        'assets/chest/ch3.jpg',
        'assets/chest/ch4.jpg',
        'assets/chest/ch5.jpg',
        'assets/chest/ch6.jpg',
        'assets/chest/ch7.jpg',
      ]),
      Exercise(title: l(context).abs, image: 'assets/ab/ab5.jpg', exe: [
        'assets/ab/ab1.jpg',
        'assets/ab/ab2.jpg',
        'assets/ab/ab3.jpg',
        'assets/ab/ab4.jpg',
        'assets/ab/ab5.jpg',
      ]),
      Exercise(title: l(context).biceps, image: 'assets/biceps/bi3.jpg', exe: [
        'assets/biceps/bi1.jpg',
        'assets/biceps/bi2.jpg',
        'assets/biceps/bi3.jpg',
        'assets/biceps/bi4.jpg',
        'assets/biceps/bi5.jpg',
      ]),
      Exercise(
          title: l(context).triceps,
          image: 'assets/triceps/tri2.jpg',
          exe: [
            'assets/triceps/tri1.jpg',
            'assets/triceps/tri2.jpg',
            'assets/triceps/tri3.jpg',
            'assets/triceps/tri4.jpg',
            'assets/triceps/tri5.jpg',
          ]),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 51, 99, 1),
      appBar: AppBar(
        title: Text('Exercise Categories'),
        backgroundColor: Color.fromRGBO(33, 51, 99, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
          children: exercises.map((exercise) {
            return ExerciseCard(
              exercise: exercise,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Exercise {
  final String title;
  final String image;
  final List<String> exe;

  Exercise({required this.title, required this.image, required this.exe});
}

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  ExerciseCard({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/exerciseType', arguments: exercise.exe);
      },
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              exercise.image,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  exercise.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 1.2,
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
