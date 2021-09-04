import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widget/categoty_item.dart';
import 'package:flutter_complete_guide/dummy_data.dart';


class CategoryScreens extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  GridView.count(
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
      );

  }
}
