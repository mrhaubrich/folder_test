import 'package:flutter/material.dart';
import 'package:folder_test/widgets/service_card.dart';
import 'package:folder_test/widgets/service_folder.dart';
import 'package:folder_test/widgets/service_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // grid view with 3 columns and 4 rows of cards
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(15, (index) {
        if (index == 0) {
          return ServiceFolder(
            services: const [
              // 2 cards in the folder
              ServiceWidget(title: 'Filho 1', icon: Icons.home),
              ServiceWidget(title: 'Filho 2', icon: Icons.home),
            ],
            title: 'Card $index',
          );
        }
        return ServiceCard(title: 'Card $index', icon: Icons.home);
      }),
    );
  }
}
