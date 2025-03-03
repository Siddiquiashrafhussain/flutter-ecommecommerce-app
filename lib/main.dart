

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';


///------ Entry point of Flutter App ------
Future<void> main() async {

//Todo: Add Widgets Binding
final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//Todo: Init Local Storage
//Todo: Await Native Splash
//Todo: Initialize Firebase

/// --initial Firebase & Authentication Repository

  await   Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      // .then(
      //     (FirebaseApp value) => Get.put(AuthenticationRepository()),
  // );

//Todo: Initialize Authentication



  runApp(const App());

}
