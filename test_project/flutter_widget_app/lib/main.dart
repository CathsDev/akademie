import 'package:flutter/material.dart';
/* import 'package:flutter_widget_app/boxes_row.dart';
import 'package:flutter_widget_app/headline_padding.dart';
import 'package:flutter_widget_app/icons_row.dart'; */

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyListViewWidget();
  }

  /*  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('Aufgabe 1'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadlinePadding(),
              HeadlinePadding(),
              BoxesRow(),
              BoxesRow(),
              IconsRow(),
              IconsRow(),
            ],
          ),
        ),
      ),
    );
  } */
}

class MyListViewWidget extends StatelessWidget {
  MyListViewWidget({super.key});

  final List<Product> products = [
    Product('Stift', 1.99),
    Product('Milch', 1.49),
    Product('Block', 3.99),
    Product('Buch', 9.99),
    Product('Brot', 2.89),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Liste')),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            return Container(
              height: 50,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Bezeichnung: ${product.name}, Preis: ${product.price.toStringAsFixed(2)}€',
                  ),
                  trailing: Icon(Icons.shopping_cart),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /* @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.price.toStringAsFixed(2)),
            leading: Icon(Icons.shopping_cart),
          );
        },
      ),
    );
  } */
}

class Product {
  String name;
  double price;
  Product(this.name, this.price);
}
