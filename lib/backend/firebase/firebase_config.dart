import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBVt4_DIZGFvFKCvebFWgYlyXLMYIF1Yek",
            authDomain: "swdatabase-7d37e.firebaseapp.com",
            projectId: "swdatabase-7d37e",
            storageBucket: "swdatabase-7d37e.appspot.com",
            messagingSenderId: "636884892809",
            appId: "1:636884892809:web:8ec6e79b8f45bd0c671a58",
            measurementId: "G-QYHV56LZR6"));
  } else {
    await Firebase.initializeApp();
  }
}
