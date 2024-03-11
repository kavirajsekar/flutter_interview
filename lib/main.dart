import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Task'),
        ),
        body: HorizontalCardList(),
      ),
    );
  }
}

class HorizontalCardList extends StatelessWidget {
  final List<String> image = [
    'assets/fm1.jpeg',
    'assets/fm2.avif',
    'assets/fm3.avif',
    'assets/fees.png',
    'assets/v_f.png',
    'assets/mm1.webp'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //here for the scroll we can use carousel_slider package and etc...
      //right now iam using listview builder horizontal scroll
      scrollDirection: Axis.horizontal,
      itemCount: image.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            //card1
            Card(
              child: Container(
                width: 150.0,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      image[index],
                      height: 150,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            //card2
            Card(
              child: Container(
                width: 150.0,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Card $index',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
