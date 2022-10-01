// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  LayoutTemplate({required this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) => ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          body: child!,
        ),
      );
}
