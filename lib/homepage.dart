import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                Container(
                  color: Colors.amber,
                  height: 150,
                  width: 150,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.amber,
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.amber,
                  height: 150,
                  width: 150,
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
                    "Playlist",
                    style: TextStyle(color: Colors.black),
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
                        Navigator.pushNamed(context, "/spiderman");
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/SpiderMan.png'),
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
                        Navigator.pushNamed(context, "/believer");
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/Paint.png'),
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
                            image: AssetImage('assets/images/Paint.png'),
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
                            image: AssetImage('assets/images/Paint.png'),
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
                    "Playlist",
                    style: TextStyle(color: Colors.black),
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
                        Navigator.pushNamed(context, "/ignite");
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
                            image: AssetImage('assets/images/Eternity.png'),
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
                        Navigator.pushNamed(context, "/spiderman");
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/Paint.png'),
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
                        Navigator.pushNamed(context, "/spiderman");
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/Paint.png'),
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
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
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
          ]),
    );
  }
}
