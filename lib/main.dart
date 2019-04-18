import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var promedio = 7.0;
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  final n3 = TextEditingController();
  final p1 = TextEditingController();
  final p2 = TextEditingController();
  final p3 = TextEditingController();

  void calcularPromedio() {
    promedio = (double.parse(n1.text) * (double.parse(p1.text) / 100) +
        double.parse(n2.text) * (double.parse(p2.text) / 100) +
        double.parse(n3.text) * (double.parse(p3.text) / 100));
    setState(() {
      promedio.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Bienvenido"),
            backgroundColor: Colors.redAccent,
          ),
          body: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          //NOTA 1
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                controller: n1,
                                decoration:
                                    InputDecoration(hintText: 'Ingrese nota 1'),
                              ),
                            ),
                            Flexible(
                              child: TextField(
                                controller: p1,
                                decoration: InputDecoration(
                                    hintText: 'Ingrese ponderación'),
                              ),
                            )
                          ],
                        ),
                        Row(
                          //NOTA 2
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                controller: n2,
                                decoration:
                                    InputDecoration(hintText: 'Ingrese nota 2'),
                              ),
                            ),
                            Flexible(
                              child: TextField(
                                controller: p2,
                                decoration: InputDecoration(
                                    hintText: 'Ingrese ponderación'),
                              ),
                            )
                          ],
                        ),
                        Row(
                          //NOTA 3
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                controller: n3,
                                decoration:
                                    InputDecoration(hintText: 'Ingrese nota 3'),
                              ),
                            ),
                            Flexible(
                              child: TextField(
                                controller: p3,
                                decoration: InputDecoration(
                                    hintText: 'Ingrese ponderación'),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Divider(
                            height: 3,
                            color: Colors.black38,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                          child: RaisedButton(
                              color: Colors.red,
                              colorBrightness: Brightness.dark,
                              child: Text("Calcular nota"),
                              onPressed: () => calcularPromedio()),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                          child: Center(
                            child: Text(
                              "Nota final: $promedio",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}

/*

 */

/*

 */
