import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final String description;
  final double price;
  final String image;

  MenuItem(
      {required this.name,
      required this.description,
      required this.price,
      required this.image});
}

class MenuScreen extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'Burger',
      description: 'A classic burger with all the fixings.',
      price: 9.99,
      image:
          'assets/images/baked-chicken-wings-asian-style-tomatoes-sauce-plate.jpg',
    ),
    MenuItem(
      name: 'Pizza',
      description: 'A delicious pizza with your choice of toppings.',
      price: 12.99,
      image:
          'assets/images/top-view-vegetable-soup-with-meat-inside-plate-grey.jpg',
    ),
    MenuItem(
      name: 'Salad',
      description: 'A healthy salad with fresh greens and veggies.',
      price: 7.99,
      image:
          'assets/images/crab-tom-yum-mama-with-lemon-chili-tomato-garlic-lemongrass-kaffir-lime-leaves-plate.jpg',
    ),
    MenuItem(
      name: 'Burger',
      description: 'A classic burger with all the fixings.',
      price: 9.99,
      image:
          'assets/images/baked-chicken-wings-asian-style-tomatoes-sauce-plate.jpg',
    ),
    MenuItem(
      name: 'Pizza',
      description: 'A delicious pizza with your choice of toppings.',
      price: 12.99,
      image:
          'assets/images/top-view-vegetable-soup-with-meat-inside-plate-grey.jpg',
    ),
    MenuItem(
      name: 'Salad',
      description: 'A healthy salad with fresh greens and veggies.',
      price: 7.99,
      image:
          'assets/images/crab-tom-yum-mama-with-lemon-chili-tomato-garlic-lemongrass-kaffir-lime-leaves-plate.jpg',
    ),
    MenuItem(
      name: 'Burger',
      description: 'A classic burger with all the fixings.',
      price: 9.99,
      image:
          'assets/images/baked-chicken-wings-asian-style-tomatoes-sauce-plate.jpg',
    ),
    MenuItem(
      name: 'Pizza',
      description: 'A delicious pizza with your choice of toppings.',
      price: 12.99,
      image:
          'assets/images/top-view-vegetable-soup-with-meat-inside-plate-grey.jpg',
    ),
    MenuItem(
      name: 'Salad',
      description: 'A healthy salad with fresh greens and veggies.',
      price: 7.99,
      image:
          'assets/images/crab-tom-yum-mama-with-lemon-chili-tomato-garlic-lemongrass-kaffir-lime-leaves-plate.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return ListTile(
            leading: Image.asset(item.image),
            title: Text(item.name),
            subtitle: Text(item.description),
            trailing: Text('\$${item.price.toStringAsFixed(2)}'),
            onTap: () {
              // TODO: Navigate to item details screen
            },
          );
        },
      ),
    );
  }
}
