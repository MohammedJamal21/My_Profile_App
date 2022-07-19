import 'package:flutter/material.dart';
import 'package:my_profile_app/src/screens/my_profile_chat_page.dart';

import 'my_profile_home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Avenir",
      ),
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const HomeView();
        },
        "/chat": (context) {
          return const ChatPage();
        },
      },
    );
  }
}
