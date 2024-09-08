import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/pages/home.dart';
import 'package:todo_app/pages/todoitem.dart';

class HomeController extends GetxController{

  List ToDoList =[
    ["task1",true],
    ["task2", false],

  ];

// change the state of task
  void checkboxChanged(bool? value, int index){
    ToDoList[index][1] = ! ToDoList[index][1];
    update();
  }
  //  adding new task
 void addTask(String val){
  ToDoList.add([val,false]);
  update();
 }
// delete task
void deleteTask(int index){
    ToDoList.removeAt(index);
    update();
}

}

