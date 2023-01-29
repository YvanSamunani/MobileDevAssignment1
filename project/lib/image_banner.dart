import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

    const ImageBanner(this._assetPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      constraints:  const BoxConstraints.expand(
        height: 300.0,
      ),
      decoration: const BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover,
      )
    );
  }
}
