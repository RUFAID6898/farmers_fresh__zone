import 'package:flutter/material.dart';

class Listss extends StatelessWidget {
  String imagee;
  String name;
  Listss({required this.imagee, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagee)),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 1,
              left: 20,
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
