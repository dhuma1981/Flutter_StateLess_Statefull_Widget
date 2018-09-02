import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Stateless - Stateful widget",
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateless - Stateful Widgets"),
        ),
        body: CustomCenter(CustomCounter()));
  }
}

class CustomCenter extends StatelessWidget {
  final Widget child;

  CustomCenter(this.child);

  @override
  Widget build(BuildContext context) {
    print("Custom Center Widget");
    return Center(
      child: child,
    );
  }
}

class CustomCounter extends StatefulWidget {
  @override
  _CustomCounterState createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int counter;

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Custom Counter Widget");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("Click me")),
        Text(
          "Value of Counter = $counter",
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}
