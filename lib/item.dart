import 'package:flutter/material.dart';

class Ithem extends StatelessWidget {
  String name;
  String price;
  String imag;
  Ithem({required this.name, required this.imag, required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 6,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 100,
            child: Image.asset(imag),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 17),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              onPressed: () {},
              child: Text('+Add to cart'))
        ],
      ),
    );
  }
}
