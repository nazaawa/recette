import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categorie_screens.dart';
import 'package:flutter_complete_guide/screens/favorite_screens.dart';
import 'package:flutter_complete_guide/widget/main_drawer.dart';

class TabsScreens extends StatefulWidget {
  const TabsScreens({Key? key}) : super(key: key);

  @override
  _TabsScreensState createState() => _TabsScreensState();
}

class _TabsScreensState extends State<TabsScreens> {

  int _selectedPageIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _pages = [
      {"pages": CategoryScreens(), "title": "Categories"},
      {"pages": FavoriteScreen(), "title": "Favorites"}
    ];

    void _selectedPage(int index) {
      setState(() {
        _selectedPageIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]["title"]),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]["pages"],
      bottomNavigationBar: BottomNavigationBar(

        onTap: _selectedPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites')
        ],
      ),
    );
  }
}
