import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tasks extends StatefulWidget {
  final tabNumber;
  Tasks({this.tabNumber});
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  final tasks = [""];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            indent: 15,
            endIndent: 15,
                color: Colors.black,
              ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return TweenAnimationBuilder(
              child: ListTile(
                title: Text("Title", style: GoogleFonts.secularOne(fontWeight: FontWeight.w500)),
                subtitle: Text(
                    "It is important, It is important,It is important,It is important,It is important,It is important,",
                    style: GoogleFonts.secularOne(fontWeight: FontWeight.w300),
                    overflow: TextOverflow.ellipsis),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("Rohan"),
                    SizedBox(width: 10.0),
                    CircleAvatar(
                      backgroundColor: Colors.black38,
                      radius: 15.0,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/task-main");
                },
                onLongPress: () {},
              ),
              tween: Tween<double>(begin: 1, end: 0),
              builder: (BuildContext context, double val, Widget child) {
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
