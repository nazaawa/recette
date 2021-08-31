import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categorie_screens.dart';
import 'package:flutter_complete_guide/screens/category_meal_screens.dart';
import 'package:flutter_complete_guide/screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                bodyText1: TextStyle(
                  fontSize: 24
                ),
                headline6: TextStyle(fontSize: 24,fontFamily: 'RobotoCondensed')
              )),
      home: CategoryScreens(),
      routes : {
        CategoryMealScreen.routeName:(ctx)=> CategoryMealScreen(),
        MealDetailScreen.routeName : (ctx)=> MealDetailScreen(),
      }
    );
  }
}
