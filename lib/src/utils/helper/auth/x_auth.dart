import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_login/twitter_login.dart';

Future<UserCredential> signInWithTwitter() async {
  // Create a TwitterLogin instance
  final twitterLogin = TwitterLogin(
      apiKey: '1Honf21RJ2qBHZVC9puKrYrC2',
      apiSecretKey: '54gO8jK6uxmjQcIutkBI1IJPbpKUTsYNW0eqtK1GMeyGurglkE',
      redirectURI: '<your_scheme>://');

  // Trigger the sign-in flow
  final authResult = await twitterLogin.login();

  // Create a credential from the access token
  final twitterAuthCredential = TwitterAuthProvider.credential(
    accessToken: authResult.authToken!,
    secret: authResult.authTokenSecret!,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance
      .signInWithCredential(twitterAuthCredential);
}
