import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.showTitle = true,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 10),
        Icon(icon),
        Text(showTitle ? title : ''),
      ],
    );
  }
}
