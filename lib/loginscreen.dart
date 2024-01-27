import 'package:flutter/material.dart';
import 'package:music_app/signupscreen.dart';
import 'package:music_app/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Container(
          child: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight / 8,
                    ),
                    // child:Image.asset(
                    //   "icons/musicicon.png"
                    // );
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: screenWidth / 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                square(-30, 0.12),
                square(-10, 0.3),
                square(10, 1),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: screenHeight / 2,
                    width: screenWidth,
                    color: Colors.grey,
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth / 12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            textField("Email", Icons.email_outlined, false),
                            textField("Password", Icons.lock_outlined, true),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 4,
                              ),
                              child : GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ),
                                  );
                                },
          
                              child: const Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(fontFamily: "Montserrat", color: Colors.white, letterSpacing: 1.5,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 30,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Don't have an account? Create one",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textField(String hint, IconData icon, bool password) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      child: TextFormField(
        obscureText: password,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.lightBlueAccent,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.lightBlueAccent,
            ),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.black26,
          ),
          contentPadding: const EdgeInsets.only(
            top: 14,
          ),
        ),
      ),
    );
  }

  Widget square(double y, double opacity) {
    return Center(
      child: Transform.translate(
        offset: Offset(screenWidth / 30, y),
        child: Transform.rotate(
          angle: -0.4,
          child: Container(
            height: screenHeight / 3,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(opacity),
              borderRadius: BorderRadius.circular(55),
            ),
          ),
        ),
      ),
    );
  }
}
