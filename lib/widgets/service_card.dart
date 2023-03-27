import 'package:flutter/material.dart';
import 'package:folder_test/widgets/service_widget.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped $title');
      },
      child: SizedBox(
        width: 100,
        height: 100,
        child: Card(
          child: ServiceWidget(title: title, icon: icon),
        ),
      ),
    );
  }
}
