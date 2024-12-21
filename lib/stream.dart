import 'package:flutter/material.dart';

class ColorStream {
    static final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
  ];

  // Stream<Color> getColor() async*{
  //   yield* Stream.periodic(
  //     const Duration(seconds: 1), (int t) {
  //       int index = t % colors.length;
  //       return colors[index];  
  // });
  // }

  static getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];  
  });
  }
}