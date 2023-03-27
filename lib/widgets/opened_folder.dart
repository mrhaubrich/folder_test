import 'package:flutter/material.dart';
import 'package:folder_test/widgets/service_card.dart';
import 'package:folder_test/widgets/service_widget.dart';

class OpenedFolder extends StatefulWidget {
  const OpenedFolder({
    Key? key,
    required this.services,
  }) : super(key: key);
  final List<ServiceWidget> services;

  @override
  State<OpenedFolder> createState() => _OpenedFolderState();
}

class _OpenedFolderState extends State<OpenedFolder> {
  @override
  Widget build(BuildContext context) {
    // a popup with a grid of cards
    return SizedBox(
      width: 300,
      height: 300,
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: widget.services
            .map((service) => ServiceCard(
                  title: service.title,
                  icon: service.icon,
                ))
            .toList(),
      ),
    );
  }
}
