import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCm6f3z_zFzv0V4pXaT9xrzSaz_Xiov-qI",
            authDomain: "character-creator-ec4af.firebaseapp.com",
            projectId: "character-creator-ec4af",
            storageBucket: "character-creator-ec4af.appspot.com",
            messagingSenderId: "288798275827",
            appId: "1:288798275827:web:602d9c528b669531451f86",
            measurementId: "G-HDBSX9E7RW"));
  } else {
    await Firebase.initializeApp();
  }
}
