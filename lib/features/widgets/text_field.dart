import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Email",
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          prefixIcon: const Icon(
            Icons.email,
            color: Colors.grey,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 2, color: Color.fromARGB(255, 120, 9, 139)),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
