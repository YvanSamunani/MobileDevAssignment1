import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Food App")),
        body: Container(
          child: MyFoodContainer(),
        ));
    throw UnimplementedError();
  }
}

class MyFoodContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Card(
            child: Text(
              "Pizza",
              style: TextStyles().textStyle,
              textAlign: TextAlign.center,
            ),
            color: Color(0XFFcfcfea),
          ),
          height: 300,
          width: 300,
        ),
        Container(
          child: Card(
            child: Text("Salad",
                style: TextStyles().textStyle, textAlign: TextAlign.center),
            color: Color(0XFFcfcfea),
          ),
          height: 300,
          width: 300,
        ),
        Container(
          child: Card(
              child: Text("Chicken",
                  style: TextStyles().textStyle, textAlign: TextAlign.center),
              color: Color(0XFFcfcfea)),
          height: 300,
          width: 300,
        ),
        Container(
          child: Card(
              child: Text("Soda",
                  style: TextStyles().textStyle, textAlign: TextAlign.center),
              color: Color(0XFFcfcfea)),
          height: 300,
          width: 300,
        ),
      ],
    );
    throw UnimplementedError();
  }
}

class MyFoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
    throw UnimplementedError();
  }
}
