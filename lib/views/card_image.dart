import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, this.image});

  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
    );
  }
}
