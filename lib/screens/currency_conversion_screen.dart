import 'package:flutter/material.dart';

class CurrencyConversionScreen extends StatefulWidget {
  @override
  _CurrencyConversionScreenState createState() =>
      _CurrencyConversionScreenState();
}

class _CurrencyConversionScreenState extends State<CurrencyConversionScreen> {
  final TextEditingController _bolivianosController = TextEditingController();
  String _result = "";
  String _result2 = "";

  void _convert() {
    double bolivianos = double.tryParse(_bolivianosController.text) ?? 0;
    double dollars = bolivianos / 6.96;
    setState(() {
      _result = '$bolivianos Bs = $dollars USD';
    });
  }

  void _convert2() {
    double dolar = double.tryParse(_bolivianosController.text) ?? 0;
    double bol = dolar * 6.96;
    setState(() {
      _result2 = '$dolar USD = $bol Bs';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bolivianos a Dolares'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _bolivianosController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Bolivianos',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convertir Bs a USD'),
              ),
              ElevatedButton(
                onPressed: _convert2,
                child: Text('Convertir USD a Bs'),
              ),
              SizedBox(height: 20),
              Text(
                _result,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                _result2,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ));
  }
}
