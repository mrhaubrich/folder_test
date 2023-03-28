import 'package:flutter/material.dart';
import 'package:folder_test/backend/service.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    Key? key,
    required this.service,
    this.showTitle = true,
  }) : super(key: key);

  final Service service;

  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 10),
        Image.network(
          service.icon ?? '',
          width: 30,
          height: 30,
        ),
        Text(
          showTitle ? (service.title ?? '') : '',
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
