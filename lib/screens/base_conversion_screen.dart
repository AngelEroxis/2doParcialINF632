import 'package:flutter/material.dart';

class BaseConversionScreen extends StatefulWidget {
  @override
  _BaseConversionScreenState createState() => _BaseConversionScreenState();
}

class _BaseConversionScreenState extends State<BaseConversionScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  void _convert() {
    String input = _controller.text;
    if (input.isEmpty) return;

    int decimal = int.tryParse(input) ?? 0;
    setState(() {
      _result = '''
      Binario: ${decimal.toRadixString(2)}
      Octal: ${decimal.toRadixString(8)}
      Hexadecimal: ${decimal.toRadixString(16).toUpperCase()}
      ''';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Decimal, Binario, Octal y Hexadecimal'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Introduce un número decimal',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convertir'),
              ),
              SizedBox(height: 20),
              Text(
                'Resultado: $_result',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ));
  }
}
