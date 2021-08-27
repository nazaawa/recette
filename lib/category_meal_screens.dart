import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName  = "/CategoryMeal";
  @override
  Widget build(BuildContext context) {
    final routesArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routesArgs["title"];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
    );
  }
}