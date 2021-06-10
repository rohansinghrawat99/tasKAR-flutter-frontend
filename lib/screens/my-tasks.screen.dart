import 'package:flutter/material.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';
import 'package:tasker/screens/customs/store_observer.dart';
import 'package:tasker/screens/tasks.screen.dart';
import 'package:tasker/store/my_tasks_store.dart';

class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  int tabNumber = 1;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      selected: 1,
      onTapFAB: () {
        Navigator.pushNamed(context, "/my-task/create");
      },
      children: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                    elevation: tabNumber == 1 ? 4 : 0,
                  color: tabNumber == 1 ? Colors.white12 : Colors.black54,
                    onPressed: () {
                      setState(() {
                        tabNumber = 1;
                      });
                    },
                    child: Text("To-Do", style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                    elevation: tabNumber == 2 ? 4 : 0,
                    color: tabNumber == 2 ? Colors.white12 : Colors.black54,
                    onPressed: () {
                      setState(() {
                        tabNumber = 2;
                      });
                    },
                    child: Text("Completed", style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                    elevation: tabNumber == 3 ? 4 : 0,
                    color: tabNumber == 3 ? Colors.white12 : Colors.black54,
                    onPressed: () {
                      setState(() {
                        tabNumber = 3;
                      });
                    },
                    child: Text("Overdue", style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
          Expanded(
            child: StoreObserver<MyTasksStore>(builder: (MyTasksStore myTaskStore, BuildContext context) {
              myTaskStore.fetchMyToDos();
              myTaskStore.fetchMyCompleted();
              myTaskStore.fetchMyOverdue();
              if (myTaskStore.isLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if (tabNumber == 1) {
                return TaskListDisplay(tasks: myTaskStore.myToDo == null ? [] : myTaskStore.myToDo.values.toList());
              }
              if (tabNumber == 2) {
                return TaskListDisplay(tasks: myTaskStore.myCompleted == null ? [] : myTaskStore.myCompleted.values.toList());
              }
              if (tabNumber == 3) {
                return TaskListDisplay(tasks: myTaskStore.myOverdue == null ? [] : myTaskStore.myOverdue.values.toList());
              }
              return TaskListDisplay(tasks: []);
            }),
          )
        ],
      ),
    );
  }
}
