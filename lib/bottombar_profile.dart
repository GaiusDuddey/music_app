import 'package:flutter/material.dart';
import 'package:music_app/bottombar_home.dart';
import 'package:music_app/bottombar_music.dart';
import 'package:music_app/bottombar_search.dart';

class BottombarProfile extends StatefulWidget {
  const BottombarProfile({Key? key}) : super(key: key);

  @override
  _BottombarProfileState createState() => _BottombarProfileState();
}

class _BottombarProfileState extends State<BottombarProfile> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final Map<String, Widget> _routes = {
    "/homebottom": BottombarHome(),
    "/search": BottombarSearch(),
    "/playlist": BottombarMusic(),
    "/profile": BottombarProfile(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    transformAlignment: Alignment.topLeft,
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "New User",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    transformAlignment: Alignment.topLeft,
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "abc@gmail.com",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    transformAlignment: Alignment.topLeft,
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "*****",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    transformAlignment: Alignment.topLeft,
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Mobile No:",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "+91*******876",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          String routeName;
          switch (index) {
            case 0:
              routeName = "/homepage";
              break;
            case 1:
              routeName = "/search";
              break;
            case 2:
              routeName = "/playlist";
              break;
            case 3:
              routeName = "/profile";
              break;
            default:
              routeName = "/homebottom";
          }
          Navigator.pushNamed(context, routeName);
        },
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Playlist',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
