import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';
import 'package:flutter_complete_guide/widget/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = "/CategoryMeal";
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routesArgs["id"];
    final categoryTitle = routesArgs["title"];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
          itemCount: categoryMeal.length,
          itemBuilder: (_, index) {
            return MealItem(
                id: categoryMeal[index].id,
                name: categoryMeal[index].title,
                imageUrl: categoryMeal[index].imageUrl,
                duration: categoryMeal[index].duration,
                complexity: categoryMeal[index].complexity,
                affordability: categoryMeal[index].affordability);
          }),
    );
  }
}
