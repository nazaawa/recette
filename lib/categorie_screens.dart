import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/categoty_item.dart';
import 'package:flutter_complete_guide/dummy_data.dart';


class CategoryScreens extends StatelessWidget {
  const CategoryScreens({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeal"),
      ),
      body: GridView.count(
        padding:const EdgeInsets.all(25),
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: DUMMY_CATEGORIES
            .map((cartdate) => Card(
                  child: CategoryItem(
                    id: cartdate.id,
                      color: cartdate.color, title: cartdate.title),
                ))
            .toList(),
      ),
    );
  }
}
