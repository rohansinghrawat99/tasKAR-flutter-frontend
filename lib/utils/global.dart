import 'dart:io';
import 'package:flutter/material.dart';

showErrorSnackBar(var e, BuildContext context, {String? message}) {
  if (e.runtimeType == SocketException) {
    showSnackBar("NO INTERNET CONNECTION", context);
    return;
  }
  showSnackBar(e.message, context);
}

void showSnackBar(String? text, BuildContext context, {Duration? duration}) {
  if (duration == null) {
    duration = Duration(milliseconds: 2500);
  }
  if (context != null) {
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            text!,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          duration: duration,
        ),
      );
  }
}
