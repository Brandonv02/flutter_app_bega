import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService{
  final GoTrueClient _auth = Supabase.instance.client.auth;

  Future<void> signInWithEmail({
    required String email,
    required String password,
  })async{
    try{
      await _auth.signInWithPassword(
          email: email,
          password: password);
    }catch(e) {
      throw e.toString();
    }
  }

Future<void> signUpWithEmail({
  required String email,
  required String password,
})async {
  try {
    await _auth.signUp(
        email: email,
        password: password);
  } catch (e) {
    throw e.toString();
  }
}

  Future<void> anonymousSingIn()async{
    try{
      await _auth.signInWithPassword(
          email: 'anonumus@hotmail.com',
          password: '123456',
      );
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> googleSingIn()async{
    try{
      await _auth.signInWithOAuth(Provider.google);

    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> facebookSingIn()async{
    try{
      await _auth.signInWithOAuth(Provider.facebook);

    } catch (e) {
    throw e.toString();
    }
  }

  Future<void> twitterSingIn()async{
    try{
      await _auth.signInWithOAuth(Provider.twitter);

    } catch (e) {
    throw e.toString();
    }
  }
}


