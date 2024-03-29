import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_profile_app/src/screens/my_profile_home_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HomePage());
}
