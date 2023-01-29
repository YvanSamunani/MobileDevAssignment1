import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  const ImageBanner(this._assetPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          constraints: const BoxConstraints.expand(
            height: 700.0,
          ),
          decoration: const BoxDecoration(color: Colors.grey),
          child: Image.asset(
            _assetPath,
            fit: BoxFit.cover,
          )),
      Container(
        height: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to EatPlanet!!!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    ]);
  }
}
