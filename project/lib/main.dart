import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/about.dart';
import 'image_banner.dart';
//pages
import './about.dart';

enum MenuOption { Cart, LogIn, SignUp }

class TextStyles {
  TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );
}

class MyColors {
  Color myColors = Color(0xFFEBF5EE);
}

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
        fontFamily: GoogleFonts.outfit().fontFamily
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
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ImageBanner("assets/images/cover.jpg"),
            MyFoodContainer()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.message),
        label: const Text('Message'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class MyFoodContainer extends StatelessWidget {
  const MyFoodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: Container(
        height: 650.0,
        color: Colors.teal,
        child: Column(
          children: [
            Decorations(),
            Text(
              "Popular Dishes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Card(
                    child: FittedBox(
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                "Soda",
                                style: TextStyles().textStyle,
                                textAlign: TextAlign.center,
                              ),
                              const Image(
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.contain,
                                  alignment: Alignment.bottomCenter,
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-photo/mojito-drink-with-lime-lemon-mint-wood-table_1150-12269.jpg?w=740&t=st=1674906598~exp=1674907198~hmac=ebdab7d1a248181c26a0a5ee1939288be39ca1c7f7f2aaee2ad15ad56a9cc78a')),
                              MyIcons()
                            ],
                          )),
                    ),
                    color: MyColors().myColors,
                  ),
                  height: 300,
                  width: 250,
                ),
                Container(
                  child: Card(
                    child: FittedBox(
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text("Salad",
                                  style: TextStyles().textStyle,
                                  textAlign: TextAlign.center),
                              const Image(
                                fit: BoxFit.contain,
                                width: 200,
                                height: 200,
                                alignment: Alignment.bottomCenter,
                                image: NetworkImage(
                                    'https://img.freepik.com/free-photo/greek-salad-with-fresh-tomato-cucumber-red-onion-basil-feta-cheese-black-olives-italian-herbs_2829-4480.jpg?w=740&t=st=1674907546~exp=1674908146~hmac=2223489b8a025863efc82d2cf9ecb9f83a7c213a894c614af2153f3cee9d21ca'),
                              ),
                              MyIcons()
                            ],
                          )),
                    ),
                    color: MyColors().myColors,
                  ),
                  height: 300,
                  width: 250,
                ),
                Container(
                  child: Card(
                    child: FittedBox(
                        child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text("Pizza",
                              style: TextStyles().textStyle,
                              textAlign: TextAlign.center),
                          const Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.bottomCenter,
                              height: 200,
                              width: 200,
                              image: NetworkImage(
                                  "https://cdn.britannica.com/08/177308-050-94D9D6BE/Food-Pizza-Basil-Tomato.jpg")),
                          MyIcons()
                        ],
                      ),
                    )),
                    color: MyColors().myColors,
                  ),
                  height: 300,
                  width: 250,
                ),
              ],
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}

class MyIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.heart,
              color: Color(0xffFB4D3D),
              size: 18,
            ),
            const FaIcon(
              FontAwesomeIcons.penToSquare,
              color: Color(0xffFB4D3D),
              size: 18,
            ),
            const FaIcon(
              FontAwesomeIcons.trash,
              color: Color(0xffFB4D3D),
              size: 18,
            )
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}

class Decorations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
          alignment: Alignment(-1.0, -1.0),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/graph.png'),
              fit: BoxFit.contain,
            )),
            child: RotatedBox(
                quarterTurns: 2,
                child: Image(
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/soda.png',
                  ),
                )),
          ))
    ]);
    throw UnimplementedError();
  }
}

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
