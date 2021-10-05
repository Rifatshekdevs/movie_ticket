import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsbackgroundScreen extends StatefulWidget {
  final Image background;
  DetailsbackgroundScreen({this.background});
  @override
  State<DetailsbackgroundScreen> createState() =>
      _DetailsbackgroundScreenState();
}

class _DetailsbackgroundScreenState extends State<DetailsbackgroundScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Positioned(
      top: -48,
      bottom: 0,
      child: TweenAnimationBuilder(
        duration: Duration(milliseconds: 700),
        tween: Tween<double>(begin: 0.25, end: 1),
        builder: (_, value, child) {
          return Transform.scale(
            scale: value,
            child: child,
          );
        },
        child: Stack(
          children: [
            Image(
              image: widget.background.image,
              height: size.height,
              width: size.width,
              fit: BoxFit.cover,
            ),
            Container(
              height: size.height,
              width: size.width,
              color: Colors.black.withOpacity(.3),
            ),
          ],
        ),
      ),
    );
  }
}
