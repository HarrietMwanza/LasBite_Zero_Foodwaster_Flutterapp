import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './login.dart';
import './restaurant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Column(
          children: [
            Container(
                height: 250.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/baked-chicken-wings-asian-style-tomatoes-sauce-plate.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                  ),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 100.0,
                      left: 40.0,
                      child: Container(
                        height: 100.0,
                        width: 300.0,
                        decoration: const BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                topLeft: Radius.circular(50))),
                      ),
                    ),
                    Positioned(
                        top: 125,
                        left: 50,
                        child: Column(children: [
                          Text(
                            'LasBite.',
                            style: GoogleFonts.josefinSans(
                                textStyle: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
                          ),
                          Text(
                            'Get that last bite.',
                          )
                        ]))
                  ],
                )),

            // Starting the list of restaurants
            Expanded(
                child: ListView(
              children: [
                SizedBox(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                            child: Container(
                          height: 230.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/anto-meneghini-IrohWzafmmA-unsplash.jpg"),
                                        fit: BoxFit.fill)),
                              ))),
                      Positioned(
                          top: 60,
                          left: 200,
                          child: Container(
                              height: 150,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shangrila',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                  Row(children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text('4.5')
                                  ]),
                                  Spacer(flex: 2),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Visit'),
                                  )
                                ],
                              ))),
                    ])),
                SizedBox(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                            child: Container(
                          height: 230.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/anto-meneghini-IrohWzafmmA-unsplash.jpg"),
                                        fit: BoxFit.fill)),
                              ))),
                      Positioned(
                          top: 60,
                          left: 200,
                          child: Container(
                              height: 150,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shangrila',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                  Row(children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text('4.5')
                                  ]),
                                  Spacer(flex: 2),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Visit'),
                                  )
                                ],
                              ))),
                    ])),
                SizedBox(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                            child: Container(
                          height: 230.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/anto-meneghini-IrohWzafmmA-unsplash.jpg"),
                                        fit: BoxFit.fill)),
                              ))),
                      Positioned(
                          top: 60,
                          left: 200,
                          child: Container(
                              height: 150,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shangrila',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                  Row(children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text('4.5')
                                  ]),
                                  Spacer(flex: 2),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Visit'),
                                  )
                                ],
                              ))),
                    ])),
                SizedBox(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                            child: Container(
                          height: 230.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/top-view-vegetable-soup-with-meat-inside-plate-grey.jpg"),
                                        fit: BoxFit.cover)),
                              ))),
                      Positioned(
                          top: 60,
                          left: 200,
                          child: Container(
                              height: 150,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shangrila',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      Text('4.5'),
                                    ],
                                  ),
                                  Spacer(flex: 2),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Visit'),
                                  )
                                ],
                              ))),
                    ])),
                SizedBox(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                            child: Container(
                          height: 230.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/crab-tom-yum-mama-with-lemon-chili-tomato-garlic-lemongrass-kaffir-lime-leaves-plate.jpg"),
                                        fit: BoxFit.cover)),
                              ))),
                      Positioned(
                          top: 60,
                          left: 200,
                          child: Container(
                              height: 150,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shangrila',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                  Row(children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text('4.5')
                                  ]),
                                  Spacer(flex: 2),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Restaurant()));
                                    },
                                    child: Text('Visit'),
                                  )
                                ],
                              ))),
                    ])),
                SizedBox(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                            child: Container(
                          height: 230.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/tender-juicy-veal-steak-medium-rare-with-french-fries.jpg"),
                                        fit: BoxFit.cover)),
                              ))),
                      Positioned(
                          top: 60,
                          left: 200,
                          child: Container(
                              height: 150,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shangrila',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                  Row(children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text('4.5')
                                  ]),
                                  Spacer(flex: 2),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Visit'),
                                  )
                                ],
                              ))),
                    ])),
                SizedBox(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                            child: Container(
                          height: 230.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table.jpg"),
                                        fit: BoxFit.cover)),
                              ))),
                      Positioned(
                          top: 60,
                          left: 200,
                          child: Container(
                              height: 150,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shangrila',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                  Row(children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text('4.5')
                                  ]),
                                  Spacer(flex: 2),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Visit'),
                                  )
                                ],
                              ))),
                    ])),
              ],
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            }));
  }
}
