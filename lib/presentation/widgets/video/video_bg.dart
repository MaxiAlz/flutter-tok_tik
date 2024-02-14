import 'package:flutter/material.dart';

class VideoBG extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;

  const VideoBG(
      {super.key,
      this.colors = const [Colors.transparent, Colors.black87],
      this.stops = const [0.5, 1.0]})
      : assert(colors.length == stops.length,
            'Stops y colores tienen que ser iguales en cantidad');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              stops: stops,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
              )),
    ));
  }
}
