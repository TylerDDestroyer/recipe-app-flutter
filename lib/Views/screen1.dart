import 'package:flutter/material.dart';
import 'package:recipe_app/Authentication/login.dart';
import 'package:recipe_app/JsonModels/users.dart';
import 'package:recipe_app/Views/about.dart';
import 'package:recipe_app/Views/create_recipe.dart';
import 'package:recipe_app/Views/recipes.dart';
import 'package:recipe_app/recipes/beefpochero.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

import '../SQLite/sqlite.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage( {Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  String? _username;
  late DatabaseHelper handler;
  late Future<List<Users>> user;
  final db = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _fetchUsername();
  }

  void addToFavorites(String item) {
    setState(() {});
  }

  Future<void> _fetchUsername() async {
    final db = await openDatabase(join(await getDatabasesPath(), 'notes.db'));
    final List<Map<String, Object?>> result = await db.query(
        'users', columns: ['usrName']);
    if (result.isNotEmpty) {
      setState(() {
        _username = result.last['usrName'] as String;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Hello ' + _username!,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Favorites'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ClickableFavoritesList()),
                ); // A
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                ); // Add your logic here
              },
            ),
            ListTile(
                title: Text('Log out'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  ); // A
                }
            ),
          ],
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 20),
            Center(
              child: const Text(
                'Popular Recipes',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BeefPochero()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/Beef pochero(tagalog style).jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Beef Pochero',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BeefSteak()),
                        ); // Handle click action here
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/Beef steak.jpg'),
                            // Change the image path
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Beef Steak',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PorkBelly()),
                        ); // Handle click action here
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        height: 200,
                        // Adjust the height according to your image size
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/pork belly.jpeg'),
                            // Change the image path
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Pork Belly',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LechonBaboy()),
                        ); // Handle click action here
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        height: 200,
                        // Adjust the height according to your image size
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/Lechon baboy.png'),
                            // Change the image path
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Lechon Baboy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GinataangManok()),
                        ); // H// Handle click action here
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        height: 200,
                        // Adjust the height according to your image size
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/Ginataang Manok.jpg'),
                            // Change the image path
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Ginataang Manok',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateRecipe()),
                ); // Add your onPress action here
              },
              child: Icon(
                  color: Colors.deepOrange,
                  Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateRecipe()),
                ); // Add your onPress action here
              },
              child: Icon(
                  color: Colors.deepOrange,
                  Icons.add),
            ),
            label: 'Add Recipe',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Recipes()),
                );
              },
              child: Icon(
                  color: Colors.deepOrange,
                  Icons.person),
            ),
            label: 'My Recipes',
          ),
        ],
      ),
    );
  }
}
