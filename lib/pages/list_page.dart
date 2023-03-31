import 'package:flutter/material.dart';
import 'package:emotionium/models/export.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Record> data = [
      Record(id: 1, emotion: Emotion.cheerful, createdAt: DateTime.now()),
      Record(id: 2, emotion: Emotion.gloomy, createdAt: DateTime.now()),
      Record(id: 3, emotion: Emotion.normal, createdAt: DateTime.now()),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, index) => listItem(data[index]),
        )
      ),
    );
  }

  Widget listItem(Record data) {
    return Card(
      child: Center(child: ListTile(
        title: Text(data.emotion.getJPN),
        subtitle: Text(data.createdAt.toString()),
      ),
      ),
    );
  }
}
