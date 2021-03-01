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
    return Container(
      child: Column(
        children: [
          Text(
            "Hasil",
            style: TextStyle(fontSize: 26),
          ),
          Text(
            "0.8",
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
