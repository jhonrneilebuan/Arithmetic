import 'package:flutter/material.dart';

// Widget para sa mga buttons
Widget buildButton(String text, Color color, VoidCallback onPressed) {
  return ElevatedButton(
    // Function na itatawag kapag na-press ang button
    onPressed: onPressed,
    // Color ng button
    style: ElevatedButton.styleFrom(backgroundColor: color),
    // Text ng button
    child: Text(text),
  );
}
