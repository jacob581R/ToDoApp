import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/controllers/homecontroller.dart';
import 'package:todo_app/pages/todoitem.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {

TextEditingController textfieldvalue = TextEditingController();


Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff16423C),
        title: Text(
          "TO_DO_LIST",
          style: TextStyle(color: Color(0xffE9EFEC)),
        ),
      ),
    floatingActionButton:
        GetBuilder<HomeController>(
            builder: (controller)=>
                FloatingActionButton(
                    onPressed:() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                content: TextField(
                                  controller:textfieldvalue,
                                  decoration:InputDecoration(hintText: "Add New Task") ,
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  MaterialButton(
                                    child: const Text('Add'),
                                    onPressed: () {
                                        controller.addTask(textfieldvalue.text);
                                        textfieldvalue.clear();
                                    },
                                  ),
                                ]
                            );
                          }
                      );
                    },
                    child: Icon(Icons.add)
                ),
        ),

      body:
      GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller)=>

              ListView.builder(
                itemCount: controller.ToDoList.length,
                itemBuilder: (context, index){
                  return
                    ToDoItem(
                      taskName: controller.ToDoList[index][0],
                      taskCompleted: controller.ToDoList[index][1],
                      onChanged: (value) => controller.checkboxChanged(value, index),
                      deleteFunction: ()=>controller.deleteTask(index),
                    );
                },),
      ),

    );
  }


}
