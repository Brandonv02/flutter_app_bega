import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../utils/services/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _AuthService = AuthService();

  AuthBloc() : super(AuthInitial()) {
    on<EmailSignInAuthEvent>((event,emit) async {
      emit(AuthLoadingState());
      try{
        await _AuthService.signInWithEmail(
            email: event.email,
            password: event.password
        );
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });
    on<EmailSignUpAuthEvent>((event,emit) async {
      emit(AuthLoadingState());
      try{
        await _AuthService.signUpWithEmail(
            email: event.email,
            password: event.password
        );
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });
    on<AnonymousSignInAuthEvent>((event,emit) async {
      emit(AuthLoadingState());
      try{
        await _AuthService.anonymousSignIn();
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });
    on<GoogleSignInAuthEvent>((event,emit) async {
      emit(AuthLoadingState());
      try {
        await _AuthService.googleSignIn();
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });
    on<FacebookSignInAuthEvent>((event,emit) async {
      emit(AuthLoadingState());
      try {
        await _AuthService.facebookSignIn();
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });
    on<TwitterSignInAuthEvent>((event,emit) async {
      emit(AuthLoadingState());
      try {
        await _AuthService.twitterSignIn();
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });
  }
}
