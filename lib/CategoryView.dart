import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import 'Category.dart';
class CategoryView extends StatefulWidget {
  final Function refreshCallBack;
  CategoryView({required this.refreshCallBack});

  @override
  CategoryViewState createState() => CategoryViewState();
}

class CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    dev.log('Render: CategoryView');

    return Container(
      margin: const EdgeInsets.only(top: 2, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Category(title: 'Cate1', color: Colors.lightGreenAccent),
                  Category(title: 'Cate2', color: Colors.lightBlueAccent.shade100),
                  Category(title: 'Category', color: Colors.lightGreenAccent),
                  Category(title: 'Category12', color: Colors.lightBlueAccent),
                  Category(title: 'Cate6534', color: Colors.lightGreenAccent),
                  Category(title: 'Cate19749', color: Colors.lightBlueAccent),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(    // Add Category button.
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const Icon(Icons.add, size:30),
            ),
            onTap: () => dev.log('Add category button clicked at ${DateTime.now()}')
          ),
        ],
      ),
    );
  }
}
