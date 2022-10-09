import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_at_fb/authentication.dart';
import 'package:project_at_fb/config.dart';
import 'package:project_at_fb/login.dart';
import 'package:project_at_fb/product.dart';

class Home extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavigationDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              AuthenticationHelper()
                  .signOut()
                  .then((_) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (contex) => Login()),
                      ));
            },
          ),
        ],
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
        title: Text("Home",),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Text('Product'),
            )
          ],
        ),
      ),
    );
  }
}
