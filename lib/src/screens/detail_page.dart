import 'package:bmi_calculator/src/home/models/food.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 51, 99, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(33, 51, 99, 1),
        title: Text(food.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                food.image,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.category,
                          size: 32,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Category',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food.category,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          size: 32,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Calories',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food.calories.toString(),
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(
                          Icons.food_bank,
                          size: 32,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Food Recommendation',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Eat ${food.name.toLowerCase()} at least twice a week',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(
                          Icons.fitness_center,
                          size: 32,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Fitness Tip',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Do physical exercise',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
