
import 'package:flutter/material.dart';
import 'package:on_boarding_demo/app/utils/appsizes.dart';

class HorizontalBar extends StatelessWidget {
  const HorizontalBar({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 4,
      width: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          AppSize.size30,
        ),
      ),
    );
  }
}
