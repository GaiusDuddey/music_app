import 'package:flutter/material.dart';
import 'package:music_app/bottombar_home.dart';
import 'package:music_app/bottombar_music.dart';
import 'package:music_app/bottombar_profile.dart';
import 'package:music_app/bottombar_search.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
          'MUSIC',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Paint.png'),
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/secondhome");
                    },
                    child: Container(
                      color: Colors.amber,
                      height: 150,
                      width: 150,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Imagine.png'),
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Container(
                      color: Colors.amber,
                      height: 150,
                      width: 150,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Gases.png'),
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Container(
                      color: Colors.amber,
                      height: 150,
                      width: 150,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Wolf.png'),
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                    height: 45,
                    width: 150,
                    alignment: Alignment.center,
                    child: Text(
                      "Hot Songs",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/home_screen");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Cool.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/disc");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Imagine.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/alone");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Alone.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/fire");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Winter.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/boys");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Boys.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                    height: 45,
                    width: 150,
                    alignment: Alignment.center,
                    child: Text(
                      "New Songs",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/rat");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Rat.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/pirates");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Pirates.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/song");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Night.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/ignite");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Space.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/disc");
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Light.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
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
