import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayOutDesign(),
    );
  }
}

class LayOutDesign extends StatefulWidget {
  const LayOutDesign({Key? key}) : super(key: key);

  @override
  State<LayOutDesign> createState() => _LayOutDesign();
}

class _LayOutDesign extends State<LayOutDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: const Icon(Icons.search_sharp),
        title: const Text(
          "Contact",
          textAlign: TextAlign.center,
        ),
        actions: const [
          Icon(Icons.mic, size: 30),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        children: [
          _listItem(
            name: 'Tommy',
          ),
          _listItem(
            name: 'Ronit',
          ),
          _listItem(
            name: 'Riddhi',
          ),
          _listItem(
            name: 'Paa',
          ),
          _listItem(
            name: 'Dadu',
          ),
          _listItem(
            name: 'Mahi',
          ),
          _listItem(
            name: 'Alia',
          ),
          _listItem(
            name: 'Rommy',
          ),
          _listItem(
            name: 'Rocky',
          ),
          _listItem(
            name: 'Zarana',
          ),
          _listItem(
            name: 'Rahul',
          ),
          _listItem(
            name: 'Smit',
          ),
          _listItem(
            name: 'Om',
          ),
        ],
      ),
    );
  }

  Widget _listItem({String? name}) {
    return ListTile(
        dense: true,
        onTap: () => ("$name pressed"),
        leading: CircleAvatar(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/contact.png',
              fit: BoxFit.fitHeight,
              height: 70,
            ),
          ),
        ),
        title: Text("$name"),
        trailing: const Icon(Icons.phone));
  }
}
