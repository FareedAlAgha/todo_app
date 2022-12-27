import 'package:flutter/material.dart';
import 'package:todo_app/ui/home/settings/settings_tab.dart';
import 'package:todo_app/ui/home/tasks_list/tasks_tab.dart';

import 'add_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ToDo App'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(color: Colors.white,width: 4)
        ),
        onPressed: (){
          showAddTaskButtomSheet();

        },
        child: Icon(Icons.add),

      ),
      bottomNavigationBar:BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,

        child: BottomNavigationBar(
          currentIndex: selectedIndexTab,
            onTap: (index){
              selectedIndexTab = index;
              setState(() {

              });

            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.list) , label:'' ),
              BottomNavigationBarItem(icon: Icon(Icons.settings) , label:'' ),


            ],

        ),
      ) ,

      body:
        Tabs[selectedIndexTab],

    );
  }

  var Tabs = [TasksTab(),SettingsTab()];

  void showAddTaskButtomSheet() {
    showModalBottomSheet(context: context, builder: (buildContext){
          return AddTask();

    });

  }
}
