import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamor,
  })  : _kelvin = kelvin,
        _reamor = reamor,
        super(key: key);

  final double _kelvin;
  final double _reamor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("Suhu dalam Kelvin"),
            Text(
              _kelvin.toStringAsFixed(2),
              style: TextStyle(height: 1.5, fontSize: 40),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Text("Suhu dalam Reamor"),
            Text(
              _reamor.toStringAsFixed(2),
              style: TextStyle(height: 1.5, fontSize: 40),
            )
          ],
        ),
      ],
    );
  }
}
