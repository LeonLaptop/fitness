import 'package:flutter/material.dart';
import 'colors.dart';

class GreyTextField extends StatelessWidget {
  final String hintTitle;
  final bool encodedInput;
  final IconData icon;

  GreyTextField({this.hintTitle, this.encodedInput, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      obscureText: encodedInput,
      textAlign: TextAlign.left,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintTitle,
        hintStyle: TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(20),
        fillColor: ligthGreyColor,
      ),
    );
  }
}

class GreyTextPWField extends StatefulWidget {
  final String hintTitle;

  GreyTextPWField({
    this.hintTitle,
  });

  @override
  _GreyTextPWFieldState createState() => _GreyTextPWFieldState();
}

class _GreyTextPWFieldState extends State<GreyTextPWField> {
  bool encodedInput = true;
  IconData icon = Icons.visibility;

  void _toggle() {
    setState(() {
      encodedInput = !encodedInput;
      if (encodedInput == true) {
        icon = Icons.visibility;
      } else {
        icon = Icons.visibility_off;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      obscureText: encodedInput,
      textAlign: TextAlign.left,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: _toggle,
          child: Icon(icon),
        ),
        prefixIcon: Icon(Icons.lock),
        hintText: widget.hintTitle,
        hintStyle: TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(20),
        fillColor: ligthGreyColor,
      ),
    );
  }
}
