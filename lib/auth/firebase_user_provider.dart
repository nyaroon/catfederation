import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CatizielFirebaseUser {
  CatizielFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CatizielFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CatizielFirebaseUser> catizielFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CatizielFirebaseUser>(
      (user) {
        currentUser = CatizielFirebaseUser(user);
        return currentUser!;
      },
    );
