import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'input.dart';
import 'result.dart';
import 'convert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
// This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etCelcius = new TextEditingController();

  double nCelcius = 0;
  double _kelvin = 0;
  double _reamor = 0;
  var listItem = ["Kelvin", "Reamur"];
  String _newValue = "Kelvin";
  double _result = 0;
  void _konversiSuhu() {
    setState(() {
      nCelcius = double.parse(etCelcius.text);
      _kelvin = nCelcius + 273;
      _reamor = (4 / 5) * nCelcius;
    });
  }

  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Input(etCelcius: etCelcius),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: dropdownOnChanged,
              ),
              Result(result: _result),
              Convert(konvertHandler: _konversiSuhu),
              Container(
                child: Text(
                  "Riwayat Konveresi",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Expanded(child: ListView())
            ],
          ),
        ),
      ),
    );
  }
}
