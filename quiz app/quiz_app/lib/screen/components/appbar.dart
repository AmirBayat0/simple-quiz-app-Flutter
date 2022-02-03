// ignore_for_file: prefer_const_constructors, unused_element, non_constant_identifier_names

import 'package:flutter/material.dart';

customAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(59),
    child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Quiz App",
        ),
        centerTitle: true),
  );
}
