import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScaffold extends StatefulWidget {
  final Widget children;
  final Widget? tabBar;
  final int? selected;
  final Function? onTapFAB;
  CustomScaffold(
      {required this.children, this.tabBar, this.selected, this.onTapFAB});
  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  var top = FractionalOffset.topCenter;
  var bottom = FractionalOffset.bottomCenter;
  var list = [
    Colors.lightGreen,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
          width: 200.0,
          child: Drawer(
            child: ListView(children: <Widget>[
              DrawerHeader(
                  child: Image.asset("assets/GX_wallpaper_1920x1080.jpg")),
              ListTile(
                tileColor: widget.selected == 1
                    ? Colors.black38
                    : Colors.blueAccent[300],
                title: Text("My Tasks"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, "/my-task");
                },
              ),
              ListTile(
                tileColor: widget.selected == 2
                    ? Colors.black38
                    : Colors.blueAccent[300],
                title: Text("Groups"),
                selectedTileColor: Colors.black38,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, "/groups");
                },
              ),
              ListTile(
                tileColor: widget.selected == 3
                    ? Colors.black38
                    : Colors.blueAccent[300],
                title: Text("My Profile"),
                selectedTileColor: Colors.black38,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, "/my-profile");
                },
              ),
            ]),
          ),
        ),
        appBar: AppBar(
            title: Text("TasKAR",
                style:
                    GoogleFonts.secularOne(fontSize: 25.0, letterSpacing: 2.0)),
            backgroundColor: Colors.black54),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              image: new DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[200]!.withOpacity(0.2), BlendMode.dstATop),
                image: AssetImage(
                  "assets/bg.jpeg",
                ),
              ),
            ),
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     stops: [
            //       0.1,
            //       0.4,
            //       0.6,
            //       0.9
            //     ],
            //     colors: [
            //       Colors.yellow,
            //       Colors.red,
            //       Colors.indigo,
            //       Colors.teal
            //     ])),
          ),
          widget.children
        ]),
        floatingActionButton: widget.onTapFAB != null
            ? FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.black87,
                onPressed: widget.onTapFAB as void Function()?)
            : null);
  }

  // Widget taskDialog() {
  //   return AlertDialog(
  //     backgroundColor: Colors.white60,
  //     title: Text("Add a task", style: GoogleFonts.secularOne(letterSpacing: 1.5)),
  //     actions: [
  //       RaisedButton(onPressed: () {
  //         Navigator.pushNamed(context, "/groups/create");
  //       }, child: Text("Create", style: GoogleFonts.lobster())),
  //       RaisedButton(onPressed: () {
  //         Navigator.pushNamed(context, "/groups/join");
  //       }, child: Text("Join", style: GoogleFonts.lobster()))
  //     ],
  //   );
  // }

  Widget groupDialog() {
    return AlertDialog(
      backgroundColor: Colors.white60,
      title: Text("Create a group or Join one",
          style: GoogleFonts.secularOne(letterSpacing: 1.5)),
      actions: [
        RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/groups/create");
            },
            child: Text("Create", style: GoogleFonts.lobster())),
        RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/groups/join");
            },
            child: Text("Join", style: GoogleFonts.lobster()))
      ],
    );
  }

  // Widget note() {
  //   return Container(
  //       height: 175.0,
  //       width: 175.0,
  //       margin: EdgeInsets.symmetric(horizontal: 15.2),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
  //         color: Colors.yellow[500].withOpacity(0.6),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.grey,
  //             blurRadius: 20.0, // soften the shadow
  //             spreadRadius: 2.0, //extend the shadow
  //             offset: Offset(
  //               10.0, // Move to right 10  horizontally
  //               10.0, // Move to bottom 10 Vertically
  //             ),
  //           )
  //         ],
  //       )
  //   );
  // }
}
