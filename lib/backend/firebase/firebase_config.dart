import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDKvwHQcaGGiF2Q0jTjp8YZLNnqSfisaxU",
            authDomain: "on-spot-12iwyn.firebaseapp.com",
            projectId: "on-spot-12iwyn",
            storageBucket: "on-spot-12iwyn.firebasestorage.app",
            messagingSenderId: "708550190345",
            appId: "1:708550190345:web:00d8c1ed941cc3fc9b5fd8",
            measurementId: "G-HPV1CSR1DQ"));
  } else {
    await Firebase.initializeApp();
  }
}
