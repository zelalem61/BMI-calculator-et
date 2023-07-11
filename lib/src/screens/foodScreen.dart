import 'package:bmi_calculator/src/screens/detail_page.dart';
import 'package:bmi_calculator/src/home/models/food.dart';
import 'package:flutter/material.dart';
import '../language/localization_util.dart';


class FoodScreen extends StatefulWidget {
  FoodScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List? foods;

  @override
  void initState() {
    foods = foods;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List foods = [
        Food(
          name: l(context).salmon,
          category: "Fish",
          calories: 206.0,
          image: "assets/images/salmon.jpg",
        ),
        Food(
          name: l(context).kale,
          category: "Vegetable",
          calories: 49.0,
          image: "assets/images/fruit.jpg",
        ),
        Food(
          name: l(context).quinoa,
          category: "Grain",
          calories: 222.0,
          image: "assets/images/kita.jpg",
        ),
        Food(
          name: l(context).burger,
          category: "Meet",
          calories: 57.0,
          image: "assets/images/burger.jpg",
        ),
        Food(
          name: l(context).salad,
          category: "Vegetable",
          calories: 160.0,
          image: "assets/images/salad.jpg",
        ),
        Food(
          name: l(context).chicken,
          category: "Meat",
          calories: 165.0,
          image: "assets/images/images.jpg",
        ),
        Food(
          name: l(context).sweet,
          category: "Vegetable",
          calories: 86.0,
          image: "assets/images/fruit.jpg",
        ),
      ];
    

    ListTile makeListTile(Food food) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            width: 100,
            padding: EdgeInsets.only(right: 12.0),
            decoration:  BoxDecoration(
                border:  Border(
                    right: BorderSide(width: 1.0, color: Colors.white24))),
            child: Image.asset(food.image),
          ),
          title: Text(
            food.name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),

          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(food.category,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(food: food)));
          },
        );

    Card makeCard(Food food) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color:  Color.fromRGBO(33, 51, 99, 1)),
            child: makeListTile(food),
          ),
        );

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: foods?.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(foods?[index]);
        },
      ),
    );

    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor:  Color.fromRGBO(33, 51, 99, 1),
      title: Text(l(context).recommendationDiet),
     
    );

    return Scaffold(
      backgroundColor:  Color.fromRGBO(72, 87, 128, 1),
      appBar: topAppBar,
      body: makeBody,
    );
  }
}





