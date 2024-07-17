import 'package:flutter/material.dart';

// Widget para sa mga buttons
Widget buildButton(String text, Color color, VoidCallback onPressed) {
  return ElevatedButton(
    // Function na itatawag kapag na-press ang button
    onPressed: onPressed,
    // Kulay ng button
    style: ElevatedButton.styleFrom(backgroundColor: color),
    // Teksto ng button
    child: Text(text),
  );
}
