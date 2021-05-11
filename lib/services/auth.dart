import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_screen/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create userobject based on firebase user
  AnomUser _userFromFirebaseUser(User user) {
    return user != null ? AnomUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<AnomUser> get user {
    return _auth
        .authStateChanges()
        //.map((User user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  // sign in as guest.
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email & pw

  // register with email and pw

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
