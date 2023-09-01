import 'package:flutter/material.dart';

class FeaturesCard extends StatelessWidget {
  final String text;
  final String text2;
  final Widget icon;

  const FeaturesCard({
    super.key,
    required this.text,
    required this.text2,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: 90,
      decoration: BoxDecoration(
          color: const Color(0xFFf3f5f7),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(8.0), child: icon),
          Text(
            text,
            maxLines: 2,
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
          Text(
            text2,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
