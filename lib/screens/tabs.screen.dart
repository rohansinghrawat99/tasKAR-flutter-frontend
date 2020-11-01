import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 2,
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "Tasker",
                  style: GoogleFonts.lobster(),
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(
                        text: "Personal"
                    ),
                    Tab(
                        text: "Groups"
                    )
                  ],
                ),
              ),
            ),
          ));
  }
}
