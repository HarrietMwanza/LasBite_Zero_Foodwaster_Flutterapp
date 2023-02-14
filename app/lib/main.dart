import "package:flutter/material.dart";

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/restaurant_image.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    "Lasbite",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'About Us',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac mi libero. Sed eget ante ante. Vivamus vel diam eget justo malesuada rhoncus. Ut vitae nunc nec nunc scelerisque fermentum. Donec a lacinia turpis, non efficitur nulla. Praesent auctor orci ut neque eleifend, eget dictum nisi facilisis. Vestibulum elementum justo quam, at fermentum risus ultricies vel.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Menu',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                MenuItem(
                  title: 'Pasta',
                  price: 12.99,
                  description:
                      "Pasta is the most deligious snack",
                ),
                MenuItem(
                  title: "Pizza",
                  price: 10.99,
                  description:
                      "We have both vegetable and meat pizza ",
                ),
                MenuItem(
                  title: "Burger",
                  price: 8.99,
                  description:
                      "Burgers are natural baked and the very deligious",
                ),
                MenuItem(
                  title: "Salad",
                  price: 6.99,
                  description:
                      "Salad are relatively cheap and are made out of chicken and beef",
                ),
                MenuItem(
                  title: 'Fries',
                  price: 4.99,
                  description:
                      "We have all the types of fries for instance chicken fries or meat",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class MenuItem extends StatelessWidget {
  final String title;
  final double price;
  final String description;

  const MenuItem({
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 5),
            ]),
          
            );
         
  }
}
