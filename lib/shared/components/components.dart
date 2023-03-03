import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/constants.dart';

Widget defaultTextFormField({required String label,
  String? hint,
  String? helpText,
  Widget? prefix,
  Widget? suffix,
  double w_border_enable = 0,
  Color? col_border_enable,
  double w_border_focuse = 0,
  Color? col_border_focuse,
  double borderRadiusFoc = 10,
  bool visibility = false,
  TextInputType? keyboardType,
  String? Function(String?)? validator}) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: prefix,
      suffixIcon: suffix,
      enabledBorder: OutlineInputBorder(
        borderSide:
        BorderSide(width: w_border_enable, color: col_border_enable!),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(width: w_border_focuse, color: col_border_focuse!),
          borderRadius: BorderRadius.circular(borderRadiusFoc)),
      errorBorder: OutlineInputBorder(
        borderSide:
        BorderSide(width: w_border_enable, color: col_border_enable),
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
          BorderSide(width: w_border_focuse, color: col_border_focuse),
          borderRadius: BorderRadius.circular(borderRadiusFoc)),
      helperText: helpText,
    ),
    keyboardType: keyboardType,
    obscureText: visibility,
    validator: validator,
  );
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

navigateTo(Widget screen, context) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ));
}

Widget animatedListItem({String? text,index,Function()? onpressed}) {
  return Card(
      elevation: 5,
      child: ListTile(
        title: Text(text!),
        trailing: IconButton(
            onPressed: onpressed,
            icon:const Icon(Icons.dangerous)
        ),
      ));
}

remveItem(int index){
  items.removeAt(index);
  animateKey.currentState!.removeItem(index, (context, animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: animatedListItem(text: items[index],),
    );
  } );
}
