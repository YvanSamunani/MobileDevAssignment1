import 'package:flutter/material.dart';
import 'package:project/about.dart';
import 'image_banner.dart';
//pages
import './about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eatplanet',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Welcome to Eatplanet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          const PopupOptionMenu(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Yvan'),
              accountEmail: Text('testemail@test.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('assets/images/avatar.png'),
              ),
            ),
            // ListTile(
            //   title: Text('About Page'),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => AboutPage()));
            //   },
            // ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const ImageBanner("assets/images/cover.jpg"),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.message),
        label: const Text('Message'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

enum MenuOption { Cart, LogIn, SignUp }

class PopupOptionMenu extends StatelessWidget {
  const PopupOptionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          const PopupMenuItem(
            child: Text('Add to Cart'),
            
            value: MenuOption.Cart,
          ),
          const PopupMenuItem(
            child: Text('Log in'),
            value: MenuOption.LogIn,
          ),
          const PopupMenuItem(
            child: Text('Sign up'),
            value: MenuOption.SignUp,
          ),
        ];
      },
    );
  }
}

