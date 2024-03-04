import 'package:flutter/material.dart';
import 'package:music_app/bottombar_home.dart';
import 'package:music_app/bottombar_music.dart';
import 'package:music_app/bottombar_profile.dart';

class BottombarSearch extends StatefulWidget {
  const BottombarSearch({Key? key}) : super(key: key);

  @override
  _BottombarSearchState createState() => _BottombarSearchState();
}

class _BottombarSearchState extends State<BottombarSearch> {
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
        // title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
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
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> SearchTerms = [
    'NCS',
    'Alone',
    'The Boys',
    'Ignite',
    'Believer',
    'Pirates',
    'Fire',
    'ITW',
    'Heroes',
    'Coffin',
    'Fat Rat',
    'Discfigure',
    'Mic Drop',
    'Spider Man',
    'Flashing Lights',
    'Be your Company',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var name in SearchTerms) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var name in SearchTerms) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
