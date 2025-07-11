import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Sayaraty'**
  String get appName;

  /// No description provided for @gettingStarted.
  ///
  /// In en, this message translates to:
  /// **'Getting Started'**
  String get gettingStarted;

  /// No description provided for @gettingStartedDescription.
  ///
  /// In en, this message translates to:
  /// **'premium and prestige cars for sale.\nExperience the thrill at lower price.'**
  String get gettingStartedDescription;

  /// No description provided for @getStartedTitle.
  ///
  /// In en, this message translates to:
  /// **'premium Cars.\nEnjoy The Luxury'**
  String get getStartedTitle;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @welcomeBackDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign in to start your journey.'**
  String get welcomeBackDescription;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAnAccount;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @welcomeToSayaraty.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Sayaraty'**
  String get welcomeToSayaraty;

  /// No description provided for @welcomeToSayaratyDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign up to start your journey.'**
  String get welcomeToSayaratyDescription;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @loginWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get loginWithGoogle;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get rememberMe;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @singUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get singUp;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Let’s Sign You In'**
  String get loginTitle;

  /// No description provided for @loginSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome back, you’ve\nbeen missed!'**
  String get loginSubTitle;

  /// No description provided for @exampleEmail.
  ///
  /// In en, this message translates to:
  /// **'example@gmail.com'**
  String get exampleEmail;

  /// No description provided for @examplePassword.
  ///
  /// In en, this message translates to:
  /// **'**********'**
  String get examplePassword;

  /// No description provided for @emailValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get emailValidation;

  /// No description provided for @passwordValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid password'**
  String get passwordValidation;

  /// No description provided for @emailEmpty.
  ///
  /// In en, this message translates to:
  /// **'Email can\'t be empty'**
  String get emailEmpty;

  /// No description provided for @passwordEmpty.
  ///
  /// In en, this message translates to:
  /// **'Password can\'t be empty'**
  String get passwordEmpty;

  /// No description provided for @passwordShouldContain.
  ///
  /// In en, this message translates to:
  /// **'Password must include: 0-9, A-Z, a-z, and special characters'**
  String get passwordShouldContain;

  /// No description provided for @forgotPasswordSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address\nto reset password.'**
  String get forgotPasswordSubTitle;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @resetEmailSent.
  ///
  /// In en, this message translates to:
  /// **'Reset email sent'**
  String get resetEmailSent;

  /// No description provided for @resetEmailSentSubTitle.
  ///
  /// In en, this message translates to:
  /// **'We have sent all required instructions details to your mail.'**
  String get resetEmailSentSubTitle;

  /// No description provided for @goToLogin.
  ///
  /// In en, this message translates to:
  /// **'Go to Login Page'**
  String get goToLogin;

  /// No description provided for @passwordDoesNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Password does not match'**
  String get passwordDoesNotMatch;

  /// No description provided for @setNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Set New Password'**
  String get setNewPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @setNewPasswordSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Create strong and secured\nnew password.'**
  String get setNewPasswordSubTitle;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @savePassword.
  ///
  /// In en, this message translates to:
  /// **'Save Password'**
  String get savePassword;

  /// No description provided for @passwordUpdated.
  ///
  /// In en, this message translates to:
  /// **'Password Updated'**
  String get passwordUpdated;

  /// No description provided for @passwordUpdatedSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Your password has been updated successfully.'**
  String get passwordUpdatedSubTitle;

  /// No description provided for @backToLogin.
  ///
  /// In en, this message translates to:
  /// **'Back to Sign In'**
  String get backToLogin;

  /// No description provided for @redirecting.
  ///
  /// In en, this message translates to:
  /// **'Redirecting sign in page in '**
  String get redirecting;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'sec'**
  String get seconds;

  /// No description provided for @registerTitle.
  ///
  /// In en, this message translates to:
  /// **'Getting Started'**
  String get registerTitle;

  /// No description provided for @registerSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Seems you are new here, \nLet’s set up your profile.'**
  String get registerSubTitle;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @registerEmail.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get registerEmail;

  /// No description provided for @registerPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get registerPassword;

  /// No description provided for @registerConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get registerConfirmPassword;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @zipCode.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get zipCode;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @byCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'By creating an account, you agree to our'**
  String get byCreateAccount;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsAndConditions;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @loginNow.
  ///
  /// In en, this message translates to:
  /// **'Login Now'**
  String get loginNow;

  /// No description provided for @fNameEmpty.
  ///
  /// In en, this message translates to:
  /// **'Full Name can\'t be empty'**
  String get fNameEmpty;

  /// No description provided for @phoneEmpty.
  ///
  /// In en, this message translates to:
  /// **'Phone Number can\'t be empty'**
  String get phoneEmpty;

  /// No description provided for @phoneValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get phoneValidation;

  /// No description provided for @zipEmpty.
  ///
  /// In en, this message translates to:
  /// **'Zip Code can\'t be empty'**
  String get zipEmpty;

  /// No description provided for @cityEmpty.
  ///
  /// In en, this message translates to:
  /// **'City can\'t be empty'**
  String get cityEmpty;

  /// No description provided for @fullNameExample.
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get fullNameExample;

  /// No description provided for @currentAddress.
  ///
  /// In en, this message translates to:
  /// **'Current Address'**
  String get currentAddress;

  /// No description provided for @currentAddressExample.
  ///
  /// In en, this message translates to:
  /// **'1234 Main St'**
  String get currentAddressExample;

  /// No description provided for @cAddressEmpty.
  ///
  /// In en, this message translates to:
  /// **'Current Address can\'t be empty'**
  String get cAddressEmpty;

  /// No description provided for @cityExample.
  ///
  /// In en, this message translates to:
  /// **'Cairo'**
  String get cityExample;

  /// No description provided for @zipExample.
  ///
  /// In en, this message translates to:
  /// **'10001'**
  String get zipExample;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @welcomeSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone\nnumber to get started'**
  String get welcomeSubTitle;

  /// No description provided for @phoneEmptyValidation.
  ///
  /// In en, this message translates to:
  /// **'Phone number can\'t be empty'**
  String get phoneEmptyValidation;

  /// No description provided for @privacyAgreement.
  ///
  /// In en, this message translates to:
  /// **'Privacy and agreements'**
  String get privacyAgreement;

  /// No description provided for @otpVerification.
  ///
  /// In en, this message translates to:
  /// **'OTP Verification'**
  String get otpVerification;

  /// No description provided for @otpVerificationSubTitle.
  ///
  /// In en, this message translates to:
  /// **'An Authentication code has been sent to '**
  String get otpVerificationSubTitle;

  /// No description provided for @codeSent.
  ///
  /// In en, this message translates to:
  /// **'Code Sent.'**
  String get codeSent;

  /// No description provided for @resendCodeIn.
  ///
  /// In en, this message translates to:
  /// **'Resend Code in'**
  String get resendCodeIn;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @bookings.
  ///
  /// In en, this message translates to:
  /// **'Bookings'**
  String get bookings;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @myBookings.
  ///
  /// In en, this message translates to:
  /// **'My Bookings'**
  String get myBookings;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @hey.
  ///
  /// In en, this message translates to:
  /// **'Hey'**
  String get hey;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
