import 'package:bmi_calculator/src/screens/exerciseScreen.dart';
import 'package:flutter/material.dart';

class ExerciseTypeScreen extends StatelessWidget {
  const ExerciseTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final exercises = ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
      backgroundColor: Color.fromRGBO(72, 87, 128, 1),
      appBar: AppBar(title: Text("Exercise"),backgroundColor: Color.fromRGBO(33, 51, 99, 1),),
      body: Padding(
        padding: EdgeInsets.only(top: 8),
        child: GestureDetector(
          onTap: () {},
          child: ListView.builder(
            itemCount: exercises.length,
            itemBuilder: (BuildContext context, int index) {
              final exercise = exercises[index];
              return SizedBox(
                height: 280,
                child: Card(
                  color: const Color(0xff443e67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Expanded(
                      child: Image(
                        image: AssetImage(exercise),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
