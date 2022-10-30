// import 'package:google_sign_in/google_sign_in.dart';

// void login() async {
//   GoogleSignIn _googleSignIn = GoogleSignIn(
//     scopes: [
//       'email',
//       // you can add extras if you require
//     ],
//   );

//   _googleSignIn.signIn().then((GoogleSignInAccount acc) async {
//     GoogleSignInAuthentication auth = await acc.authentication;
//     print(acc.id);
//     print(acc.email);
//     print(acc.displayName);
//     print(acc.photoUrl);

//     acc.authentication.then((GoogleSignInAuthentication auth) async {
//       print(auth.idToken);
//       print(auth.accessToken);
//     });
//   });
// }