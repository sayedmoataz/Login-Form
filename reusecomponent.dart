// ignore_for_file: non_constant_identifier_names, prefer_equal_for_default_values, prefer_const_constructors, use_function_type_syntax_for_parameters, invalid_required_named_param, avoid_types_as_parameter_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

Widget defaultTextFormField({
  @required TextEditingController? controller,
  @required TextInputType? type,
  @required IconData? prefix,
  IconData? suffix,
  bool password = false,
  @required String? label,
  Function()? suffixPressed,
  bool isPassword = false,
}) =>
    TextFormField(
      obscureText: password,
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '${label} Must Not be Empty';
        } else {
          return null;
        }
      },
    );
