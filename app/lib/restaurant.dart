import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Column(children: [
        Container(
            height: 250.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/anto-meneghini-IrohWzafmmA-unsplash.jpg"),
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
                        'Shangrila',
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
        SizedBox(height: 40),
        SizedBox(
          height: 280.0,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            SizedBox(
              width: 10,
            ),
            buildCard(),
            SizedBox(width: 40),
            buildCard(),
            SizedBox(width: 40),
            buildCard(),
            SizedBox(width: 40),
            buildCard(),
            SizedBox(width: 40),
            buildCard(),
            SizedBox(width: 40),
            buildCard(),
            SizedBox(
              height: 10,
            ),
          ]),
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
        )
      ]),
    );
  }
}

Widget buildCard() => Container(
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20)),
      height: 200,
      width: 200,
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
                width: 200,
                height: 200,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/images/anto-meneghini-IrohWzafmmA-unsplash.jpg',
                      fit: BoxFit.contain,
                    )))),
        Text('Egg Rolls',
            style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ))),
        Text('Price: \$5.00',
            style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ))),
      ]),
    );
