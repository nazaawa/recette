import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(title, icon , void Function() ontap) {
      return ListTile(
          onTap:ontap ,
          leading: Icon(icon, size: 26),
          title: Text(title,
              style: TextStyle(
                  fontFamily: "RobotoCondensed",
                  fontSize: 24,
                  fontWeight: FontWeight.bold)));
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "Cooking Up",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile("meal", Icons.restaurant , (){
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile("filters", Icons.settings, (){
            Navigator.of(context).pushReplacementNamed(
              FilterScreen.routeName
            );
          }),
        ],
      ),
    );
  }
}
