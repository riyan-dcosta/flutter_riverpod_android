import 'package:flutter/material.dart';

class WeatherElevatedContainer extends StatelessWidget {
  const WeatherElevatedContainer(
      {super.key, required this.child, this.width, this.height});

  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width:width,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 8.0,
            spreadRadius: 8.0
        )
        ],
        border: Border.all(color: theme.primaryColor, width: 2.0,),
        borderRadius: BorderRadius.circular(16.0),
      ),

      child: child,
    );
  }
}
