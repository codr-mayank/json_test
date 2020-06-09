import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingSimple extends StatefulWidget {
  @override
  _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
}

class _JsonParsingSimpleState extends State<JsonParsingSimple> {
  Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Parsing Json')),
    );
  }

  Future getData() async {
    var data;
    String url = 'https://jsonplaceholder.typicode.com/posts';
    Network network = Network(url);

    data = network.fetchData();
    print(data);
    return data;
  }
}

class Network {
  final String url;

  Network(this.url);

  Future fetchData() async {
    print('$url');
    Response response = await get(Uri.encodeFull(url));
    if (response.statusCode == 200) {
      // print(response.body);
      return json.decode(response.body[0]);
    } else {
      print(response.statusCode);
    }
  }
}
