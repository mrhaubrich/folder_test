import 'package:flutter/material.dart';
import 'package:folder_test/backend/get_services.dart';
import 'package:folder_test/backend/service.dart';
import 'package:folder_test/widgets/service_card.dart';
import 'package:folder_test/widgets/service_folder.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<Service>> get services async {
    final services = await Services.getAll(timeout: 1);
    return services.map((e) => Service.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    // grid view with 3 columns and 4 rows of cards
    return FutureBuilder<List<Service>>(
      future: services,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            children: snapshot.data!
                .map((service) => service.isFolder
                    ? ServiceFolder(service: service)
                    : ServiceCard(service: service))
                .toList(),
          );
        } else if (snapshot.hasError) {
          return const Text('Error');
        } else {
          return const Text('Loading');
        }
      },
    );
  }
}
