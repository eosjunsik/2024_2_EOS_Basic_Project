import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60, // Adjust the width as needed
        height: 60, // Adjust the height as needed
        decoration: BoxDecoration(
          color: Color(0xFFA4C639), // Button color
          borderRadius: BorderRadius.circular(15), // Rounded corners
        ),
        child: Center(
          child: Text(
            '+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}