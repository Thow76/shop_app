import 'package:flutter/material.dart';
import '../providers/product.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Shop'),
          // Switching between favourites and all products with a pop up menu
          actions: <Widget>[
            PopupMenuButton(
              onSelected: (int selectedValue) {},
              icon: Icon(
                Icons.more_vert,
              ),
              itemBuilder: (_) => [
                PopupMenuItem(child: Text('Only Favourites'), value: 0),
                PopupMenuItem(
                  child: Text('Show All'),
                  value: 1,
                ),
              ],
            ),
          ],
        ),
        body: ProductsGrid());
  }
}
