// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandableCustom extends StatelessWidget {
  List<dynamic> expanded = [];
  String headerText;
  bool isOpen;

  ExpandableCustom(
      {this.isOpen = true, required this.expanded, required this.headerText});
  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      controller: ExpandableController(initialExpanded: isOpen),
      header: Row(
        children: [
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              headerText,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      collapsed: Center(),
      expanded: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              ...expanded
            ],
          )),
      theme: ExpandableThemeData(
        iconPadding: EdgeInsets.only(
          right: 10,
        ),
        iconColor: Colors.black,
        iconSize: 30,
        headerAlignment: ExpandablePanelHeaderAlignment.top,
      ),
    );
  }
}
