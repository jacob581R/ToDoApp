


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return AlertDialog(

    backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          children: [
            // get the data from user
            TextField(
            decoration:InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add New Task"
            ),
            )
            //  actions button
          ],
        ),
      ),
    );

  }


}