import 'package:flutter/material.dart';

import 'card_image.dart';

class ViewKeyboardPage extends StatelessWidget {
  const ViewKeyboardPage({super.key});
  static const String images = 'assets/images/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(220, 215, 213, 100),
        title: const Text('F2-84'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color.fromRGBO(220, 215, 213, 100), Colors.white])),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('${images}main-image.jpg'))),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      margin: const EdgeInsets.only(top: 6.0, right: 6.0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: const [
                    Flexible(
                        child: CardImage(image: '${images}child-image-1.jpg')),
                    Flexible(
                        child: CardImage(image: '${images}child-image-2.jpg')),
                    Flexible(
                        child: CardImage(image: '${images}child-image-3.jpg')),
                    Flexible(
                        child: CardImage(image: '${images}child-image-4.jpg')),
                  ],
                )),
            Flexible(
                flex: 4,
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 0.0),
                      alignment: Alignment.center,
                      child: const Text(
                        "F2-84 by Geonworks",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: const Text(
                          "It is a product designed for overseas sales of the F1-8X and focused on its appearance. The plate was designed in the same way as the F1-8X, but with the feedback from the F1-8X customers, the typing feeling was designed a little stiffer It was sold on pre-order in Sep 2021, and a total of 600 keyboards were produced and sold.\nWe are currently preparing for Priority R2.\n\n- Mount: Gasket O-ring, Plateless\n- Typing angle: 9˚\n- Front Height: 16.3mm\n- Materials\n: Cases- A6063-T6\n: Weights - Stainless Steel 316L\n- 3.2kg\n- Compatible PCBs - H87nu\n- Color - Silver/Black/Lavender(GMK Collab)"),
                    ),
                    Image.asset('${images}desc-image.jpeg')
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
