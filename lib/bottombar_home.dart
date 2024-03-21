import 'package:flutter/material.dart';
import 'package:music_app/bottombar_music.dart';
import 'package:music_app/bottombar_profile.dart';
import 'package:music_app/bottombar_search.dart';
class BottombarHome extends StatefulWidget {
  const BottombarHome({ Key? key }) : super(key: key);

  @override
  _BottombarHomeState createState() => _BottombarHomeState();
}

class _BottombarHomeState extends State<BottombarHome> {
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
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
              routeName = "/settingsmain";
              break;
            default:
              routeName = "";
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
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}