import 'package:flutter/material.dart';
import 'values/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  
  
  double _result = 0.0;

  
  void _performOperation(String operation) {
    double num1 = double.tryParse(_controller1.text) ?? 0;
    double num2 = double.tryParse(_controller2.text) ?? 0;

    setState(() {
      
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
      

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Arithmetic Operations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
            
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
            
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                width: 200,
                  child: buildButton('Addition', Colors.green, () => _performOperation('add'))
                ),
                const SizedBox(width: 20),
                
                SizedBox(
                width: 200,
                  child: buildButton('Subtraction', Colors.red, () => _performOperation('subtract'))
                
                ),
                SizedBox(
                width: 200,
                  child: buildButton('Multiplication', Colors.orange, () => _performOperation('multiply'))
                ),
                
                SizedBox(
                width: 200,
                  child: buildButton('Division', Colors.blue, () => _performOperation('divide'))
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Display ng result
            Text(
              'Result: $_result',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

//explain
