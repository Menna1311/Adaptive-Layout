import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  const Item2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
      ),
    );
  }
}
