import 'package:flutter/material.dart';
import 'package:folder_test/backend/service.dart';
import 'package:folder_test/widgets/service_widget.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({Key? key, required this.service}) : super(key: key);

  final Service service;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped ${service.title}');
      },
      child: SizedBox(
        width: 100,
        height: 100,
        child: Card(
          child: ServiceWidget(
            service: service,
          ),
        ),
      ),
    );
  }
}
