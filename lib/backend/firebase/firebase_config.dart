import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCB_YdFG-tQ0IChlOLzXwZWT-k4SU4y1yk",
            authDomain: "asthma-montemplate-o84nw2.firebaseapp.com",
            projectId: "asthma-montemplate-o84nw2",
            storageBucket: "asthma-montemplate-o84nw2.firebasestorage.app",
            messagingSenderId: "752508870773",
            appId: "1:752508870773:web:9ab664f66f43fd5d81183c"));
  } else {
    await Firebase.initializeApp();
  }
}
