// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.title, required this.isChecked, required this.checkedBox, this.longPressed});

  final String title;
  final bool isChecked;
  final Function(bool?) checkedBox;
  final Function()? longPressed;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressed,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkedBox,
      ),
    );
  }
}


// (bool? checkedBoxState){
// if (checkedBoxState != null) {
// setState(() {
// isChecked = checkedBoxState;
// });
// }
// },

