import 'package:flutter/material.dart';
import 'values/button.dart';

// Pangunahing widget ng home page
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// State ng home page na may user input at operation
class _MyHomePageState extends State<MyHomePage> {
  // Controllers para sa text fields
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  
  // Variable para sa resulta
  double _result = 0.0;

  // Function para magsagawa ng operation
  void _performOperation(String operation) {
    double num1 = double.tryParse(_controller1.text) ?? 0;
    double num2 = double.tryParse(_controller2.text) ?? 0;

    setState(() {
      // Switch case para sa iba't ibang operation
      switch (operation) {
        case 'add':
          _result = num1 + num2;
          break;
        case 'subtract':
          _result = num1 - num2;
          break;
        case 'multiply':
          _result = num1 * num2;
          break;
        case 'divide':
          _result = num2 != 0 ? num1 / num2 : 0;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar na may title
      appBar: AppBar(
        title: Text('Arithmetic Operations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Text field para sa first number
            TextField(
              controller: _controller1,
              decoration: InputDecoration(
                labelText: 'Enter first number',
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            // Text field para sa 2nd number
            TextField(
              controller: _controller2,
              decoration: InputDecoration(
                labelText: 'Enter second number',
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Button addition
                buildButton('Addition', Colors.green, () => _performOperation('add')),
                // Button subtraction
                buildButton('Subtraction', Colors.red, () => _performOperation('subtract')),
                // Button multiplication
                buildButton('Multiplication', Colors.orange, () => _performOperation('multiply')),
                // Button division
                buildButton('Division', Colors.blue, () => _performOperation('divide')),
              ],
            ),
            SizedBox(height: 20),
            // Display ng result
            Text(
              'Result: $_result',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
