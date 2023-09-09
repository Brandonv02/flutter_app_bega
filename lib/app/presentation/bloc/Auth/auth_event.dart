part of 'auth_bloc.dart';
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];

}

class EmailSignInAuthEvent extends AuthEvent {
  final String email, password;

  const EmailSignInAuthEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];

}

class EmailSignUpAuthEvent extends AuthEvent {
  final String email, password;

  const EmailSignUpAuthEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class AnonymousSignInAuthEvent extends AuthEvent {
  const AnonymousSignInAuthEvent ();
}

class GoogleSignInAuthEvent extends AuthEvent {
  const GoogleSignInAuthEvent ();
}

class FacebookSignInAuthEvent extends AuthEvent {
  const FacebookSignInAuthEvent ();
}

class TwitterSignInAuthEvent extends AuthEvent {
  const TwitterSignInAuthEvent ();
}

class SignOutAuthEvent extends AuthEvent {
  const SignOutAuthEvent ();
}