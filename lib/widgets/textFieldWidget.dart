import 'package:flutter/material.dart';



class TextFieldWidget extends StatelessWidget {

  String labelText;
  String hintText;
  Function onPressed;
  Function onChanged;
  bool passwordText;
  IconButton textFeildIcon;
  int maxLength;
  String helperText;
  TextEditingController controller;
  TextInputType textInputType;
  FormFieldValidator validate;


  TextFieldWidget({@required this.labelText, this.hintText, this.onPressed, this.passwordText, this.textFeildIcon, this.maxLength,  this.helperText, this.controller, this.onChanged, this.textInputType, this.validate});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validate,
        keyboardType: textInputType,
        onChanged: onChanged,
        controller: controller,
        maxLength: maxLength,
        obscureText: passwordText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.orange
            )
          ),
          labelText:labelText,
          hintText: hintText,
          suffixIcon: textFeildIcon,
          helperText: helperText,
        ),
      ),
    );
  }
}
