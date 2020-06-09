import 'package:flutter/material.dart';

class BizCardj extends StatefulWidget {
  @override
  _BizCardjState createState() => _BizCardjState();
}

class _BizCardjState extends State<BizCardj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Test"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 130,
              child: Card(
                color: Colors.redAccent,
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 9),
                    Text('HELLO WORLD'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
