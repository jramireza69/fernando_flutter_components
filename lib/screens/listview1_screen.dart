import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'MEtal Gear',
    'Super Smart',
    'Final Fantasy'
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View1 appBar'),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      /* leading: Icon(Icons.ac_unit), */
                      trailing: const Icon(Icons.arrow_left_outlined),
                      title: Text(e),
                    ))
                .toList(),
            /* ListTile(
              leading: Icon(Icons.abc),
              title: Text('data')|,
            ) */
          ],
        ));
  }
}
