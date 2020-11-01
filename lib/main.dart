import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasker/screens/group-create.dart';
import 'package:tasker/screens/group-join.dart';
import 'package:tasker/screens/group-main.dart';
import 'package:tasker/screens/groups.screen.dart';
import 'package:tasker/screens/loading.screen.dart';
import 'package:tasker/screens/login.screen.dart';
import 'package:tasker/screens/my-group-tasks.screen.dart';
import 'package:tasker/screens/my-profile.screen.dart';
import 'package:tasker/screens/my-tasks.screen.dart';
import 'package:tasker/screens/splash_screen.dart';
import 'package:tasker/screens/task-main.screen.dart';
import 'package:tasker/store/user_store.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<UserStore>.value(value: UserStore()),
    ],
    child: MaterialApp(initialRoute: SplashScreen.routeNamed, routes: {
      Login.routeNamed: (context) => Login(),
      SplashScreen.routeNamed: (context) => SplashScreen(),
      "/loading": (context) => LoadingScreen(),
      "/my-task": (context) => MyTask(),
      "/groups": (context) => Groups(),
      "/groups/main": (context) => GroupMain(),
      "/groups/join": (context) => GroupJoin(),
      "/groups/create": (context) => GroupCreate(),
      "/my-profile": (context) => MyProfile(),
      "/groups/my-tasks": (context) => MyGroupTasks(),
      "/task-main": (context) => TaskMain()
    }),
  ));
}
