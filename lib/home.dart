import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Music Player",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
      body: Scrollbar(
      child: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Eternity.png"),
            fit: BoxFit.cover,
          ),
        ),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/musicicon.png",
              width: 150,
              height: 150,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home_screen");
              },
              child: Text(
                "NCS",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/alone");
              },
              child: Text(
                "Alone",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
             TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/boys");
              },
              child: Text(
                "The Boys",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ignite");
              },
              child: Text(
                "Ignite",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/believer");
              },
              child: Text(
                "Believer",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pirates");
              },
              child: Text(
                "Pirates",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/fire");
              },
              child: Text(
                "Fire",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/song");
              },
              child: Text(
                "ITW",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
             TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/heroes");
              },
              child: Text(
                "Heroes",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/coffin");
              },
              child: Text(
                "Coffin",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/rat");
              },
              child: Text(
                "Fat Rat",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/disc");
              },
              child: Text(
                "Discfigure",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/mic");
              },
              child: Text(
                "Mic Drop",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/spiderman");
              },
              child: Text(
                "Spider Man",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            )
          ],
        ),
      ),
      ),
      ),
    );
  }
}
