import 'package:flutter/material.dart';
import 'package:online_shopping_portal/constants/constants.dart';
import 'package:online_shopping_portal/models/item.dart';
import 'package:online_shopping_portal/screens/grid_item.dart';

import '../constants/strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Item> productList;

  @override
  void initState() {
    super.initState();
    productList = Constants.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(Strings.appTitle),
        actions: _buildMenuActions(),
      ),
      body: _buildGridView(),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 8.0 / 9.0, crossAxisSpacing: 4, mainAxisSpacing: 4),
      itemCount: productList.length,
      padding: EdgeInsets.all(4.0),
      itemBuilder: (BuildContext context, int index) {
        return GridItem(item: productList[index]);
      },
    );
  }

  _buildMenuActions() {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.favorite),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {},
      ),
      new IconButton(
        icon: new Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ];
  }
}
