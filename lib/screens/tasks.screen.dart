import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tasker/models/task.dart';
import 'package:tasker/models/user.dart';
import 'package:tasker/screens/task-main.screen.dart';
import 'package:tasker/store/user_store.dart';

class TaskListDisplay extends StatelessWidget {
  final List<Task>? tasks;
  TaskListDisplay({this.tasks});
  @override
  Widget build(BuildContext context) {
    if (tasks == null || tasks!.isEmpty) return Text("NO TASKS YET");
    UserModal? loggedInUser = Provider.of<UserStore>(context).loggedInUser;
    tasks!.sort((a,b) => a.dueTime!.compareTo(b.dueTime!));
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            indent: 15,
            endIndent: 15,
                color: Colors.black,
              ),
          itemCount: tasks!.length,
          itemBuilder: (context, index) {
            return TweenAnimationBuilder(
              child: ListTile(
                title: Text(tasks![index].title!, style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
                subtitle: Text(
                    tasks![index].description!,
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w300),
                    overflow: TextOverflow.ellipsis),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(tasks![index].assignedTo != null ? tasks![index].assignedTo!.name! : loggedInUser!.name!, style: TextStyle(fontSize: 10.0),),
                    SizedBox(width: 10.0),
                    CircleAvatar(
                      backgroundColor: Colors.black38,
                      radius: 15.0,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskMain(task: tasks![index]),
                    ),
                  );
                },
                onLongPress: () {},
              ),
              tween: Tween<double>(begin: 1, end: 0),
              builder: (BuildContext context, double val, Widget? child) {
                return Opacity(
                  opacity: val == 1 ? 0 : 1,
                  child: Padding(
                    padding: EdgeInsets.only(left: val * 60),
                    child: child,
                  ),
                );
              },
              duration: Duration(milliseconds: 700),
            );
          }),
    );
  }
}
