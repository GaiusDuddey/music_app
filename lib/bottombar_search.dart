import 'package:flutter/material.dart';

class BottombarSearch extends StatefulWidget {
  const BottombarSearch({Key? key}) : super(key: key);

  @override
  _BottombarSearchState createState() => _BottombarSearchState();
}

class _BottombarSearchState extends State<BottombarSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        actions: [IconButton(onPressed: () {
          showSearch(context: context, delegate: CustomSearchDelegate(),);
        },
         icon: const Icon(Icons.search),
        )
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate{
  List<String> SearchTerms =[
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
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear),
      onPressed: () {
        query='';
      },
      )
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back),
      onPressed: () {
      close(context, null);
    },);
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery =[];
    for(var name in SearchTerms){
      if(name.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
     List<String> matchQuery =[];
    for(var name in SearchTerms){
      if(name.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}