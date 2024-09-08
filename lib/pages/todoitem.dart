


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToDoItem extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function (bool?)? onChanged;
  VoidCallback deleteFunction;

  ToDoItem({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction

  });

  @override
  Widget build(BuildContext context) {
    return
      Padding(padding: EdgeInsets.all(24),
        child:
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                color: Color(0xffE9EFEC)),
            padding: EdgeInsets.all(16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // check box
                    Checkbox(value: taskCompleted, onChanged: onChanged,
                    ),
                    Text(taskName, style: TextStyle(
                        fontSize: 16, color: Color(0xffC16423C)),),

                  ],
                ),
                MaterialButton(
                  child: Icon(Icons.delete),
                  onPressed:deleteFunction
                )
              ],
            )


        ),

      );
  }


}