import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:folder_test/backend/service.dart';
import 'package:folder_test/widgets/colors.dart';
import 'package:folder_test/widgets/opened_folder.dart';
import 'package:folder_test/widgets/service_widget.dart';

class ServiceFolder extends StatefulWidget {
  const ServiceFolder({
    Key? key,
    required this.service,
  }) : super(key: key);

  final Service service;

  @override
  State<ServiceFolder> createState() => _ServiceFolderState();
}

class _ServiceFolderState extends State<ServiceFolder> {
  @override
  Widget build(BuildContext context) {
    // a service that acts as a folder for other services
    return GestureDetector(
      onTap: () {
        // open a popup with a grid of cards
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            barrierDismissible: true,
            maintainState: true,
            barrierColor: MyColors.blur,
            barrierLabel: 'Folder',
            pageBuilder: (context, animation, secondaryAnimation) {
              return Hero(
                tag: 'folder_${widget.service.title}',
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                    shadowColor: Colors.black,
                    scrollable: true,
                    content: OpenedFolder(
                      services: widget.service.children,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
      child: Hero(
        tag: 'folder_${widget.service.title}',
        child: Card(
          // folder is a grid with max 2x2 cards
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: widget.service.children
                      .map((service) => ServiceWidget(
                            service: service,
                            showTitle: false,
                          ))
                      .toList(),
                ),
              ),
              Text(widget.service.title ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
