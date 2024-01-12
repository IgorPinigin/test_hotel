import 'package:flutter/material.dart';

class ImageRoundedContainer extends StatelessWidget {
  const ImageRoundedContainer({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: size.width,
        height: 257,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: Image(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
