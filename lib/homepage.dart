import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_farmer_fresh_zoone/item.dart';
import 'package:flutter_application_farmer_fresh_zoone/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquri = MediaQuery.of(context);
    final List<String> mapsss = [
      'assets/vegi/veg2.jpeg',
      'assets/vegi/veg1.jpeg',
      'assets/vegi/veg3.jpeg'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Column(
          children: [
            Text(
              'FRESH',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              'ZOONE',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
        title: Center(
          child: Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.green),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  focusedBorder: InputBorder.none,
                  hintText: 'Search'),
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.green,
          )
        ],
      ),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                'Vegetable',
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                'Fruits',
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                'Product',
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 50,
                  ),
                  Text('Location grown')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.add_home_work,
                    size: 50,
                  ),
                  Text('Hom'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 50,
                  ),
                  Text('Farm_to_Home'),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 4,
        ),
        Container(
          height: 200,
          child: Column(
            children: [
              CarouselSlider(
                  items: mapsss
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(item),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true, aspectRatio: 2, enlargeCenterPage: true))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Listss(imagee: 'assets/vegi/veg2.jpeg', name: 'fruids'),
            Listss(imagee: 'assets/vegi/veg3.jpeg', name: 'prodect'),
            Listss(imagee: 'assets/vegi/veg1.jpeg', name: 'vegitable'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Popular Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 190,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Ithem(name: 'onian', imag: 'assets/vegi/veg5.jpeg', price: 'Rs.50'),
            SizedBox(
              width: 10,
            ),
            Ithem(
                name: 'tomatto', imag: 'assets/vegi/veg8.jpeg', price: 'Rs.30'),
            SizedBox(
              width: 10,
            ),
            Ithem(
                name: 'fruids', imag: 'assets/vegi/veg1.jpeg', price: 'Rs.40'),
            SizedBox(
              width: 10,
            ),
            Ithem(name: 'onian', imag: 'assets/vegi/veg9.jpeg', price: 'Rs.40')
          ]),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'New Aditional',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: _mediaquri.size.height * 0.25,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Ithem(name: 'onian', imag: 'assets/vegi/veg1.jpeg', price: 'Rs.50'),
            SizedBox(
              width: 10,
            ),
            Ithem(
                name: 'tomatto', imag: 'assets/vegi/veg2.jpeg', price: 'Rs.30'),
            SizedBox(
              width: 10,
            ),
            Ithem(
                name: 'fruids', imag: 'assets/vegi/veg3.jpeg', price: 'Rs.40'),
            SizedBox(
              width: 10,
            ),
            Ithem(name: 'onian', imag: 'assets/vegi/veg8.jpeg', price: 'Rs.40')
          ]),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }
}
