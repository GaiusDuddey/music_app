import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> users = [
    "name1",
    "name2",
    "name3",
    "name4",
    "name1",
    "name2",
    "name3",
    "name4",
    "name1",
    "name2",
    "name3",
    "name4",
    "name1",
    "name2",
    "name3",
    "name4",
    "name1",
    "name2",
    "name3",
    "name4",
    "name1",
    "name2",
    "name3",
    "name4",
    "name1",
    "name2",
    "name3",
    "name4",
    "name1",
    "name2",
    "name3",
    "name4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List view",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final name = users[index];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    color: Color.fromRGBO(0, 0, 0, 50),
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    )),
              );
            },
          )),
    );
  }
}
