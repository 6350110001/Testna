import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_at_fb/login.dart';
import 'package:project_at_fb/product.dart';
import 'package:project_at_fb/signup.dart';

class fix extends StatefulWidget {
  const fix({Key? key}) : super(key: key);

  @override
  State<fix> createState() => _fixState();
}

class _fixState extends State<fix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class NavigationDrawer extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;
  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );
Widget buildHeader(BuildContext context) => Container(
  color: Colors.purple,
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffE6E6E6),
          radius: 40,
          child: Icon(
            Icons.person,
            color: Color(0xffCCCCCC),
            size: 50,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(user.email,style: TextStyle(fontSize: 18,color: Colors.white),)
      ],
    ),
  ),
  padding: const EdgeInsets.all(24),
);
Widget buildMenuItems(BuildContext context) => Wrap(
  runSpacing: 10,
  children: [
    ListTile(
      leading: const Icon(Icons.home),
      title: const Text('Home'),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
            Login()));
      },
    ),
    ListTile(
      leading: const Icon(Icons.add_box),
      title: const Text('Add Product'),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
            HomePage()));

      },
    ),
    ListTile(
      leading: const Icon(Icons.people_alt),
      title: const Text('About'),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
            Signup()));

      },
    ),
  ],
);
}

