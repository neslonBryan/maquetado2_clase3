import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(40),
        ),
        color: Color.fromARGB(255, 136, 174, 218),
        margin: EdgeInsets.only(
          right: 10.0,
          left: 10.0,
          bottom: 10.0,
          top: 35.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListBody(
                    children: [
                      CircleAvatar(
                        radius: 90,
                        backgroundImage: NetworkImage(
                            "https://static7.depositphotos.com/1007879/742/i/450/depositphotos_7422654-stock-photo-blue-space-star-nebula.jpg"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Card(
                        elevation: 15,
                        margin: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text("Email addres"),
                            ListTile(
                              leading: Icon(Icons.message),
                              title: Text("Username@gmail.com"),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 15,
                        margin: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text("Password"),
                            ListTile(
                              leading: Icon(Icons.lock),
                              title: Text("***************"),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromARGB(255, 32, 35, 190),
                              width: 3),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        color: Color.fromARGB(255, 32, 35, 190),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                            ),
                            ListTile(
                              title: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Singup"),
                            Text("Forgot Password?"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
