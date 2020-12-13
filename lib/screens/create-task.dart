import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:tasker/models/screen_arguments.dart';
import 'package:tasker/models/task.dart';
import 'package:tasker/models/user.dart';
import 'package:tasker/screens/customs/store_observer.dart';
import 'package:tasker/services/preference_service.dart';
import 'package:tasker/store/my_tasks_store.dart';

import 'customs/scaffold.custom.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  int groupId;
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String pickedDateTime;

  void dispose() {
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (groupId == null) {
      ScreenArguments arguments = ModalRoute.of(context).settings.arguments;
      groupId = arguments == null || arguments.groupId == null
          ? -1
          : arguments.groupId;
    }
    return CustomScaffold(
      selected: 2,
      children: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Enter the Task Title",
                    style: GoogleFonts.secularOne(
                        fontWeight: FontWeight.w500, fontSize: 20.0)),
                SizedBox(height: 30.0),
                TextField(
                  controller: myController1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Title"),
                ),
                SizedBox(height: 30.0),
                Text("Enter the Task Description",
                    style: GoogleFonts.secularOne(
                        fontWeight: FontWeight.w500, fontSize: 20.0)),
                SizedBox(height: 30.0),
                TextField(
                  controller: myController2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Description"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton.icon(
                      label: Text("Due Date"),
                      icon: Icon(
                          Icons.calendar_today
                      ),
                      onPressed: () {
                          showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2020, 1), lastDate: DateTime(2100)).then((date) {
                            if (date != null) {
                              showTimePicker(context: context, initialTime: TimeOfDay.now()).then((time) {
                                if (time != null) {
                                  print(time);
                                  DateTime dateTime = DateTime.utc(date.year, date.month, date.day, time.hour, time.minute);
                                  print(dateTime.toIso8601String());
                                  setState(() {
                                    pickedDateTime = dateTime.toIso8601String();
                                  });
                                }
                              });
                            }
                          });
                      },
                    ),
                    Container(
                      child: Text(pickedDateTime == null ? "" : DateFormat("dd-MM-yyyy (HH:mm)").format(DateTime.parse(pickedDateTime))),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87)
                      ),
                    )
                  ],
                ),
                StoreObserver<MyTasksStore>(
                  builder: (MyTasksStore myTaskStore, BuildContext context) {
                    return RaisedButton(
                        color: Colors.black54,
                        onPressed: () async{
                          if (myController1.text.isEmpty || myController2.text.isEmpty) {
                            print("Not Validated");
                            return;
                          }
                          if (myTaskStore.isLoading) return;
                          UserModal loggedInUser = await PreferenceService.getInstance().getAuthUser();
                          Task task = Task();
                          task.title = myController1.value.text;
                          task.description = myController2.value.text;
                          task.assignedToId = loggedInUser.id;
                          task.dueTime = pickedDateTime;
                          if (groupId != -1) {
                            task.groupId = groupId;
                            task.assignedToId = loggedInUser.id;
                          }
                          print(Task.toJson(task));
                          await myTaskStore.addTask(Task.toJson(task));
                          Navigator.pop(context);
                        },
                        child: myTaskStore.isLoading
                            ? Center(child: CircularProgressIndicator())
                            : Text("CREATE",
                                style:
                                    GoogleFonts.secularOne(color: Colors.white))
                    );
                  },
                )
              ],
            )),
      ),
    );
  }
}
