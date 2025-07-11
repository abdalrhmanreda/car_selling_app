import 'package:bloc/bloc.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:sayaraty/core/cache/shared_pref.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var forgotPasswordFormKey = GlobalKey<FormState>();
  var forgotPasswordEmailController = TextEditingController();
  var resetPasswordFormKey = GlobalKey<FormState>();
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  void checkFormValidity() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      emit(LoginFormValid(true));
    }
  }

  // void login() {
  //   if (formKey.currentState?.validate() ?? false) {
  //     emit(LoginLoading());
  //     FirebaseAuth.instance
  //         .signInWithEmailAndPassword(
  //           email: emailController.text.trim(),
  //           password: passwordController.text.trim(),
  //         )
  //         .then((userCredential) {
  //           // Store user ID in shared preferences or any other storage if needed
  //           SharedPrefService().setString(
  //             'userId',
  //             userCredential.user?.uid ?? '',
  //           );
  //           SharedPrefService().setBool('isFirstTime', false);
  //
  //           emit(LoginSuccess());
  //         })
  //         .catchError((error) {
  //           emit(LoginFailure(error.toString()));
  //         });
  //   } else {
  //     emit(LoginFormValid(false));
  //   }
  // }
}
