import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final url = "https://jsonplaceholder.typicode.com/posts";

  var data = [];

  void fetchData() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = json.decode(response.body) as List;

      setState(() {
        data = jsonData;
      });
    } on Exception catch (error) {
      // TODO
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fetch Data Example"),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text(data[index]["body"]),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchData,
          child: Icon(Icons.refresh),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
