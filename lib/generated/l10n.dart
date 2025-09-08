// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `OK`
  String get common_ok {
    return Intl.message('OK', name: 'common_ok', desc: '', args: []);
  }

  /// `Cancel`
  String get common_cancel {
    return Intl.message('Cancel', name: 'common_cancel', desc: '', args: []);
  }

  /// `Yes`
  String get common_yes {
    return Intl.message('Yes', name: 'common_yes', desc: '', args: []);
  }

  /// `No`
  String get common_no {
    return Intl.message('No', name: 'common_no', desc: '', args: []);
  }

  /// `Success`
  String get common_success {
    return Intl.message('Success', name: 'common_success', desc: '', args: []);
  }

  /// `Error`
  String get common_error {
    return Intl.message('Error', name: 'common_error', desc: '', args: []);
  }

  /// `Next`
  String get common_next {
    return Intl.message('Next', name: 'common_next', desc: '', args: []);
  }

  /// `Confirm`
  String get common_confirm {
    return Intl.message('Confirm', name: 'common_confirm', desc: '', args: []);
  }

  /// `Something went wrong. Please restart the app.`
  String get common_somethingWentWrong {
    return Intl.message(
      'Something went wrong. Please restart the app.',
      name: 'common_somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get errorHandler_success {
    return Intl.message(
      'Success',
      name: 'errorHandler_success',
      desc: '',
      args: [],
    );
  }

  /// `Bad request. Try again later.`
  String get errorHandler_badRequest {
    return Intl.message(
      'Bad request. Try again later.',
      name: 'errorHandler_badRequest',
      desc: '',
      args: [],
    );
  }

  /// `Success with no content.`
  String get errorHandler_noContent {
    return Intl.message(
      'Success with no content.',
      name: 'errorHandler_noContent',
      desc: '',
      args: [],
    );
  }

  /// `Choose an option to continue.`
  String get errorHandler_multipleChoices {
    return Intl.message(
      'Choose an option to continue.',
      name: 'errorHandler_multipleChoices',
      desc: '',
      args: [],
    );
  }

  /// `This URL is no longer available.`
  String get errorHandler_movedPermanently {
    return Intl.message(
      'This URL is no longer available.',
      name: 'errorHandler_movedPermanently',
      desc: '',
      args: [],
    );
  }

  /// `Forbidden request. Try again later.`
  String get errorHandler_forbidden {
    return Intl.message(
      'Forbidden request. Try again later.',
      name: 'errorHandler_forbidden',
      desc: '',
      args: [],
    );
  }

  /// `User unauthorized. Try again later.`
  String get errorHandler_unauthorized {
    return Intl.message(
      'User unauthorized. Try again later.',
      name: 'errorHandler_unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Payment required.`
  String get errorHandler_paymentRequired {
    return Intl.message(
      'Payment required.',
      name: 'errorHandler_paymentRequired',
      desc: '',
      args: [],
    );
  }

  /// `Unprocessable data. Check and try again.`
  String get errorHandler_unprocessableContent {
    return Intl.message(
      'Unprocessable data. Check and try again.',
      name: 'errorHandler_unprocessableContent',
      desc: '',
      args: [],
    );
  }

  /// `Invalid data. Please try again.`
  String get errorHandler_badGateway {
    return Intl.message(
      'Invalid data. Please try again.',
      name: 'errorHandler_badGateway',
      desc: '',
      args: [],
    );
  }

  /// `Server is under maintenance.`
  String get errorHandler_serviceUnavailable {
    return Intl.message(
      'Server is under maintenance.',
      name: 'errorHandler_serviceUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `URL not found. Try again later.`
  String get errorHandler_notFound {
    return Intl.message(
      'URL not found. Try again later.',
      name: 'errorHandler_notFound',
      desc: '',
      args: [],
    );
  }

  /// `Conflict found. Try again later.`
  String get errorHandler_conflict {
    return Intl.message(
      'Conflict found. Try again later.',
      name: 'errorHandler_conflict',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again later.`
  String get errorHandler_internalServerError {
    return Intl.message(
      'Something went wrong. Please try again later.',
      name: 'errorHandler_internalServerError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again later.`
  String get errorHandler_genericError {
    return Intl.message(
      'Something went wrong. Please try again later.',
      name: 'errorHandler_genericError',
      desc: '',
      args: [],
    );
  }

  /// `Request timed out. Try again later.`
  String get errorHandler_timeout {
    return Intl.message(
      'Request timed out. Try again later.',
      name: 'errorHandler_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Cache error. Try again later.`
  String get errorHandler_cacheError {
    return Intl.message(
      'Cache error. Try again later.',
      name: 'errorHandler_cacheError',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection.`
  String get errorHandler_noInternet {
    return Intl.message(
      'Please check your internet connection.',
      name: 'errorHandler_noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Unsupported. Please try again later.`
  String get errorHandler_methodNotAllowed {
    return Intl.message(
      'Unsupported. Please try again later.',
      name: 'errorHandler_methodNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Permanent redirect. Method and body will not change.`
  String get errorHandler_permanentRedirect {
    return Intl.message(
      'Permanent redirect. Method and body will not change.',
      name: 'errorHandler_permanentRedirect',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests. Please try again later.`
  String get errorHandler_tooManyRequests {
    return Intl.message(
      'Too many requests. Please try again later.',
      name: 'errorHandler_tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Access denied due to legal reasons.`
  String get errorHandler_unavailableForLegalReasons {
    return Intl.message(
      'Access denied due to legal reasons.',
      name: 'errorHandler_unavailableForLegalReasons',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred.`
  String get errorHandler_unknownError {
    return Intl.message(
      'An unknown error occurred.',
      name: 'errorHandler_unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Connection to the server failed.`
  String get errorHandler_connectionError {
    return Intl.message(
      'Connection to the server failed.',
      name: 'errorHandler_connectionError',
      desc: '',
      args: [],
    );
  }

  /// `Request to the server was cancelled.`
  String get errorHandler_requestCancelled {
    return Intl.message(
      'Request to the server was cancelled.',
      name: 'errorHandler_requestCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connection timeout with the server.`
  String get errorHandler_connectionTimeout {
    return Intl.message(
      'Connection timeout with the server.',
      name: 'errorHandler_connectionTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Receive timeout in connection with the server.`
  String get errorHandler_receiveTimeout {
    return Intl.message(
      'Receive timeout in connection with the server.',
      name: 'errorHandler_receiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Send timeout in connection with the server.`
  String get errorHandler_sendTimeout {
    return Intl.message(
      'Send timeout in connection with the server.',
      name: 'errorHandler_sendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.`
  String get errorHandler_somethingWentWrong {
    return Intl.message(
      'Something went wrong.',
      name: 'errorHandler_somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred!`
  String get errorWidgets_errorOccurred {
    return Intl.message(
      'An error occurred!',
      name: 'errorWidgets_errorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Error Summary`
  String get errorWidgets_errorSummary {
    return Intl.message(
      'Error Summary',
      name: 'errorWidgets_errorSummary',
      desc: '',
      args: [],
    );
  }

  /// `Error Context`
  String get errorWidgets_errorContext {
    return Intl.message(
      'Error Context',
      name: 'errorWidgets_errorContext',
      desc: '',
      args: [],
    );
  }

  /// `Exception`
  String get errorWidgets_exception {
    return Intl.message(
      'Exception',
      name: 'errorWidgets_exception',
      desc: '',
      args: [],
    );
  }

  /// `Error Code`
  String get errorWidgets_errorCode {
    return Intl.message(
      'Error Code',
      name: 'errorWidgets_errorCode',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternetWidget_noInternetConnection {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternetWidget_noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Something is wrong with your connection. Please try again later.`
  String get noInternetWidget_checkConnection {
    return Intl.message(
      'Something is wrong with your connection. Please try again later.',
      name: 'noInternetWidget_checkConnection',
      desc: '',
      args: [],
    );
  }

  /// `Error: {errCode}`
  String general_error(int errCode) {
    return Intl.message(
      'Error: $errCode',
      name: 'general_error',
      desc: '',
      args: [errCode],
    );
  }

  /// `No image available`
  String get general_noImageAvailable {
    return Intl.message(
      'No image available',
      name: 'general_noImageAvailable',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0 {just now} =1 {1 second ago} other {{count} seconds ago}}`
  String timeAgo_second(num count) {
    return Intl.plural(
      count,
      zero: 'just now',
      one: '1 second ago',
      other: '$count seconds ago',
      name: 'timeAgo_second',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1 {1 minute ago} other {{count} minutes ago}}`
  String timeAgo_minute(num count) {
    return Intl.plural(
      count,
      one: '1 minute ago',
      other: '$count minutes ago',
      name: 'timeAgo_minute',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1 {1 hour ago} other {{count} hours ago}}`
  String timeAgo_hour(num count) {
    return Intl.plural(
      count,
      one: '1 hour ago',
      other: '$count hours ago',
      name: 'timeAgo_hour',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1 {1 day ago} other {{count} days ago}}`
  String timeAgo_day(num count) {
    return Intl.plural(
      count,
      one: '1 day ago',
      other: '$count days ago',
      name: 'timeAgo_day',
      desc: '',
      args: [count],
    );
  }

  /// `Update Required`
  String get update_required {
    return Intl.message(
      'Update Required',
      name: 'update_required',
      desc: '',
      args: [],
    );
  }

  /// `Update Available`
  String get update_available {
    return Intl.message(
      'Update Available',
      name: 'update_available',
      desc: '',
      args: [],
    );
  }

  /// `A new version of the app is required to continue using it. Please update.`
  String get update_requiredBody {
    return Intl.message(
      'A new version of the app is required to continue using it. Please update.',
      name: 'update_requiredBody',
      desc: '',
      args: [],
    );
  }

  /// `A new version is available. Update now for new features.`
  String get update_availableBody {
    return Intl.message(
      'A new version is available. Update now for new features.',
      name: 'update_availableBody',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Browse your favorite products easily and quickly from your mobile!`
  String get onboardingTitle1 {
    return Intl.message(
      'Browse your favorite products easily and quickly from your mobile!',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Order at the click of a button and track your delivery status in real time`
  String get onboardingTitle2 {
    return Intl.message(
      'Order at the click of a button and track your delivery status in real time',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Take advantage of daily deals and exclusive discounts for you!`
  String get onboardingTitle3 {
    return Intl.message(
      'Take advantage of daily deals and exclusive discounts for you!',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Don't have an account? <a>Register</a>`
  String get dontHaveAnAccountAregistera {
    return Intl.message(
      'Don\'t have an account? <a>Register</a>',
      name: 'dontHaveAnAccountAregistera',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Remember Me`
  String get rememberMe {
    return Intl.message('Remember Me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Forget Pass`
  String get forgetPass {
    return Intl.message('Forget Pass', name: 'forgetPass', desc: '', args: []);
  }

  /// `Please enter your email`
  String get pleaseEnterYourEmail {
    return Intl.message(
      'Please enter your email',
      name: 'pleaseEnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get pleaseEnterAValidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'pleaseEnterAValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterYourPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get createNewAccount {
    return Intl.message(
      'Create new account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  /// `Last Name`
  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password Confirmation`
  String get passwordConfirmation {
    return Intl.message(
      'Password Confirmation',
      name: 'passwordConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to all of our <a>Terms & Conditions</a> and <b>Privacy policies</b>`
  String get agreeToTermsAndPolicies {
    return Intl.message(
      'By creating an account, you agree to all of our <a>Terms & Conditions</a> and <b>Privacy policies</b>',
      name: 'agreeToTermsAndPolicies',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your first name`
  String get pleaseEnterYourFirstName {
    return Intl.message(
      'Please enter your first name',
      name: 'pleaseEnterYourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your last name`
  String get pleaseEnterYourLastName {
    return Intl.message(
      'Please enter your last name',
      name: 'pleaseEnterYourLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get pleaseEnterYourPhoneNumber {
    return Intl.message(
      'Please enter your phone number',
      name: 'pleaseEnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get pleaseEnterAValidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'pleaseEnterAValidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Your password must be at least 8 characters`
  String get yourPasswordMustBeAtLeast8Characters {
    return Intl.message(
      'Your password must be at least 8 characters',
      name: 'yourPasswordMustBeAtLeast8Characters',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get pleaseConfirmYourPassword {
    return Intl.message(
      'Please confirm your password',
      name: 'pleaseConfirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords doesn't match`
  String get passwordsDoesntMatch {
    return Intl.message(
      'Passwords doesn\'t match',
      name: 'passwordsDoesntMatch',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message('Warning', name: 'warning', desc: '', args: []);
  }

  /// `Please accept the terms and conditions`
  String get pleaseAcceptTheTermsAndConditions {
    return Intl.message(
      'Please accept the terms and conditions',
      name: 'pleaseAcceptTheTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Sur Name`
  String get surName {
    return Intl.message('Sur Name', name: 'surName', desc: '', args: []);
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `By creating an account, you agree to our <a>Terms & Conditions</a> and <b>Privacy Policy</b>`
  String get byCreatingAnAccountYouAgreeToOurTermsConditions {
    return Intl.message(
      'By creating an account, you agree to our <a>Terms & Conditions</a> and <b>Privacy Policy</b>',
      name: 'byCreatingAnAccountYouAgreeToOurTermsConditions',
      desc: '',
      args: [],
    );
  }

  /// `Verify Account`
  String get verifyAccount {
    return Intl.message(
      'Verify Account',
      name: 'verifyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter Confirmation Code`
  String get enterConfirmationCode {
    return Intl.message(
      'Enter Confirmation Code',
      name: 'enterConfirmationCode',
      desc: '',
      args: [],
    );
  }

  /// `OTP sent to {email}`
  String otpSent(String email) {
    return Intl.message(
      'OTP sent to $email',
      name: 'otpSent',
      desc: '',
      args: [email],
    );
  }

  /// `Resend OTP`
  String get resendOtp {
    return Intl.message('Resend OTP', name: 'resendOtp', desc: '', args: []);
  }

  /// `Are you sure you want to close the app?`
  String get areYouSureYouWantToCloseTheApp {
    return Intl.message(
      'Are you sure you want to close the app?',
      name: 'areYouSureYouWantToCloseTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Set a new password`
  String get setANewPassword {
    return Intl.message(
      'Set a new password',
      name: 'setANewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address`
  String get pleaseEnterYourEmailAddress {
    return Intl.message(
      'Please enter your email address',
      name: 'pleaseEnterYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get pleaseEnterAValidEmailAddress {
    return Intl.message(
      'Please enter a valid email address',
      name: 'pleaseEnterAValidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? <a>Login</a>`
  String get alreadyHaveAnAccountLogin {
    return Intl.message(
      'Already have an account? <a>Login</a>',
      name: 'alreadyHaveAnAccountLogin',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message('Add to cart', name: 'addToCart', desc: '', args: []);
  }

  /// `About Product <a>({product})</a>`
  String aboutProduct(Object product) {
    return Intl.message(
      'About Product <a>($product)</a>',
      name: 'aboutProduct',
      desc: '',
      args: [product],
    );
  }

  /// `Advantages`
  String get advantages {
    return Intl.message('Advantages', name: 'advantages', desc: '', args: []);
  }

  /// `Product Details <a>({product})</a>`
  String productDetails(Object product) {
    return Intl.message(
      'Product Details <a>($product)</a>',
      name: 'productDetails',
      desc: '',
      args: [product],
    );
  }

  /// `Wholesale price`
  String get wholesalePrice {
    return Intl.message(
      'Wholesale price',
      name: 'wholesalePrice',
      desc: '',
      args: [],
    );
  }

  /// `Retail price`
  String get retailPrice {
    return Intl.message(
      'Retail price',
      name: 'retailPrice',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'nav_bar', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Step 2`
  String get step2 {
    return Intl.message('Step 2', name: 'step2', desc: '', args: []);
  }

  /// `Finalize Payment`
  String get finalizePayment {
    return Intl.message(
      'Finalize Payment',
      name: 'finalizePayment',
      desc: '',
      args: [],
    );
  }

  /// `Payment Details`
  String get paymentDetails {
    return Intl.message(
      'Payment Details',
      name: 'paymentDetails',
      desc: '',
      args: [],
    );
  }

  /// `The two parties meet to deliver the product`
  String get theTwoPartiesMeetToDeliverTheProduct {
    return Intl.message(
      'The two parties meet to deliver the product',
      name: 'theTwoPartiesMeetToDeliverTheProduct',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the <a>Terms & Conditions</a>`
  String get iAgreeToTheTermsConditions {
    return Intl.message(
      'I agree to the <a>Terms & Conditions</a>',
      name: 'iAgreeToTheTermsConditions',
      desc: '',
      args: [],
    );
  }

  /// `Step 3`
  String get step3 {
    return Intl.message('Step 3', name: 'step3', desc: '', args: []);
  }

  /// `Review Order`
  String get reviewOrder {
    return Intl.message(
      'Review Order',
      name: 'reviewOrder',
      desc: '',
      args: [],
    );
  }

  /// `About Supplier`
  String get aboutSupplier {
    return Intl.message(
      'About Supplier',
      name: 'aboutSupplier',
      desc: '',
      args: [],
    );
  }

  /// `Buyer information`
  String get buyerInformation {
    return Intl.message(
      'Buyer information',
      name: 'buyerInformation',
      desc: '',
      args: [],
    );
  }

  /// `Total Cost`
  String get totalCost {
    return Intl.message('Total Cost', name: 'totalCost', desc: '', args: []);
  }

  /// `Grand Total`
  String get grandTotal {
    return Intl.message('Grand Total', name: 'grandTotal', desc: '', args: []);
  }

  /// `Sub Total`
  String get subtotal {
    return Intl.message('Sub Total', name: 'subtotal', desc: '', args: []);
  }

  /// `Service Fee`
  String get serviceFee {
    return Intl.message('Service Fee', name: 'serviceFee', desc: '', args: []);
  }

  /// `Total (VAT)`
  String get totalVat {
    return Intl.message('Total (VAT)', name: 'totalVat', desc: '', args: []);
  }

  /// `How was your experience with us?`
  String get howWasYourExperienceWithUs {
    return Intl.message(
      'How was your experience with us?',
      name: 'howWasYourExperienceWithUs',
      desc: '',
      args: [],
    );
  }

  /// `Good`
  String get good {
    return Intl.message('Good', name: 'good', desc: '', args: []);
  }

  /// `Very Good`
  String get veryGood {
    return Intl.message('Very Good', name: 'veryGood', desc: '', args: []);
  }

  /// `Excellent`
  String get excellent {
    return Intl.message('Excellent', name: 'excellent', desc: '', args: []);
  }

  /// `Bad`
  String get bad {
    return Intl.message('Bad', name: 'bad', desc: '', args: []);
  }

  /// `Feedback`
  String get feedback {
    return Intl.message('Feedback', name: 'feedback', desc: '', args: []);
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Report a problem`
  String get reportAProblem {
    return Intl.message(
      'Report a problem',
      name: 'reportAProblem',
      desc: '',
      args: [],
    );
  }

  /// `Return to nav_bar`
  String get returnToHome {
    return Intl.message(
      'Return to nav_bar',
      name: 'returnToHome',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your time`
  String get thankYouForYourTime {
    return Intl.message(
      'Thank you for your time',
      name: 'thankYouForYourTime',
      desc: '',
      args: [],
    );
  }

  /// `Write your problem`
  String get writeYourProblem {
    return Intl.message(
      'Write your problem',
      name: 'writeYourProblem',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Checkout`
  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  /// `An amount of SAR {amount} will be charged to verify your card. The amount will be refunded immediately`
  String amountWillBeCharged(num amount) {
    return Intl.message(
      'An amount of SAR $amount will be charged to verify your card. The amount will be refunded immediately',
      name: 'amountWillBeCharged',
      desc: '',
      args: [amount],
    );
  }

  /// `We have bags, each one labeled with ironing + ironing and washing + dry cleaning.`
  String get weHaveBagsEachOneLabeledWithIroningIroningAnd {
    return Intl.message(
      'We have bags, each one labeled with ironing + ironing and washing + dry cleaning.',
      name: 'weHaveBagsEachOneLabeledWithIroningIroningAnd',
      desc: '',
      args: [],
    );
  }

  /// `Request and specify the type of washing for each bag`
  String get requestAndSpecifyTheTypeOfWashingForEachBag {
    return Intl.message(
      'Request and specify the type of washing for each bag',
      name: 'requestAndSpecifyTheTypeOfWashingForEachBag',
      desc: '',
      args: [],
    );
  }

  /// `Wash and iron`
  String get washAndIron {
    return Intl.message(
      'Wash and iron',
      name: 'washAndIron',
      desc: '',
      args: [],
    );
  }

  /// `Iron`
  String get iron {
    return Intl.message('Iron', name: 'iron', desc: '', args: []);
  }

  /// `Dry clean`
  String get dryClean {
    return Intl.message('Dry clean', name: 'dryClean', desc: '', args: []);
  }

  /// `Hang it on the door, we take it, prepare it, wash it and send you the bill.`
  String get hangItOnTheDoorWeTakeItPrepareIt {
    return Intl.message(
      'Hang it on the door, we take it, prepare it, wash it and send you the bill.',
      name: 'hangItOnTheDoorWeTakeItPrepareIt',
      desc: '',
      args: [],
    );
  }

  /// `We deliver it and hang it on your door without you being at nav_bar`
  String get weDeliverItAndHangItOnYourDoorWithout {
    return Intl.message(
      'We deliver it and hang it on your door without you being at nav_bar',
      name: 'weDeliverItAndHangItOnYourDoorWithout',
      desc: '',
      args: [],
    );
  }

  /// `Why the smart Reclean laundry bag?`
  String get whyTheSmartRecleanLaundryBag {
    return Intl.message(
      'Why the smart Reclean laundry bag?',
      name: 'whyTheSmartRecleanLaundryBag',
      desc: '',
      args: [],
    );
  }

  /// `Hang it up and don't meet the representative. You don't need to be at nav_bar.`
  String get hangItUpAndDontMeetTheRepresentativeYouDont {
    return Intl.message(
      'Hang it up and don\'t meet the representative. You don\'t need to be at nav_bar.',
      name: 'hangItUpAndDontMeetTheRepresentativeYouDont',
      desc: '',
      args: [],
    );
  }

  /// `Clothes are not considered for you`
  String get clothesAreNotConsideredForYou {
    return Intl.message(
      'Clothes are not considered for you',
      name: 'clothesAreNotConsideredForYou',
      desc: '',
      args: [],
    );
  }

  /// `How does it work?`
  String get howDoesItWork {
    return Intl.message(
      'How does it work?',
      name: 'howDoesItWork',
      desc: '',
      args: [],
    );
  }

  /// `laundry/clothes/blankets`
  String get laundryClothesBlankets {
    return Intl.message(
      'laundry/clothes/blankets',
      name: 'laundryClothesBlankets',
      desc: '',
      args: [],
    );
  }

  /// `loyalty points`
  String get loyaltyPoints {
    return Intl.message(
      'loyalty points',
      name: 'loyaltyPoints',
      desc: '',
      args: [],
    );
  }

  /// `Redeem points`
  String get redeemPoints {
    return Intl.message(
      'Redeem points',
      name: 'redeemPoints',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get service {
    return Intl.message('Services', name: 'service', desc: '', args: []);
  }

  /// `Order status`
  String get orderStatus {
    return Intl.message(
      'Order status',
      name: 'orderStatus',
      desc: '',
      args: [],
    );
  }

  /// `No orders yet`
  String get noOrdersYet {
    return Intl.message(
      'No orders yet',
      name: 'noOrdersYet',
      desc: '',
      args: [],
    );
  }

  /// `order number`
  String get orderNumber {
    return Intl.message(
      'order number',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `The representative is on his way to receive your order.`
  String get theRepresentativeIsOnHisWayToReceiveYourOrder {
    return Intl.message(
      'The representative is on his way to receive your order.',
      name: 'theRepresentativeIsOnHisWayToReceiveYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Prepare your order and it will be received at the pre-specified time.`
  String get prepareYourOrderAndItWillBeReceivedAtThe {
    return Intl.message(
      'Prepare your order and it will be received at the pre-specified time.',
      name: 'prepareYourOrderAndItWillBeReceivedAtThe',
      desc: '',
      args: [],
    );
  }

  /// `Track order`
  String get trackOrder {
    return Intl.message('Track order', name: 'trackOrder', desc: '', args: []);
  }

  /// `Orders`
  String get orders {
    return Intl.message('Orders', name: 'orders', desc: '', args: []);
  }

  /// `The representative is on the way to pick up the order`
  String get representativeIsOnTheWay {
    return Intl.message(
      'The representative is on the way to pick up the order',
      name: 'representativeIsOnTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Prepare your order and it will be delivered on time`
  String get prepareYourOrder {
    return Intl.message(
      'Prepare your order and it will be delivered on time',
      name: 'prepareYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `You can pay now`
  String get youCanPayNow {
    return Intl.message(
      'You can pay now',
      name: 'youCanPayNow',
      desc: '',
      args: [],
    );
  }

  /// `Your order is on its way to the laundry and the tepidarium will be dispatched soon`
  String get yourOrderIsOnItsWay {
    return Intl.message(
      'Your order is on its way to the laundry and the tepidarium will be dispatched soon',
      name: 'yourOrderIsOnItsWay',
      desc: '',
      args: [],
    );
  }

  /// `Your laundry has been started, please pay your bill now to prepare your order for delivery`
  String get yourLaundryHasBeenStarted {
    return Intl.message(
      'Your laundry has been started, please pay your bill now to prepare your order for delivery',
      name: 'yourLaundryHasBeenStarted',
      desc: '',
      args: [],
    );
  }

  /// `Your order is ready for delivery`
  String get yourOrderIsReadyForDelivery {
    return Intl.message(
      'Your order is ready for delivery',
      name: 'yourOrderIsReadyForDelivery',
      desc: '',
      args: [],
    );
  }

  /// `The order was delivered by the captain`
  String get theOrderWasDeliveredByTheCaptain {
    return Intl.message(
      'The order was delivered by the captain',
      name: 'theOrderWasDeliveredByTheCaptain',
      desc: '',
      args: [],
    );
  }

  /// `View your receipt`
  String get viewYourReceipt {
    return Intl.message(
      'View your receipt',
      name: 'viewYourReceipt',
      desc: '',
      args: [],
    );
  }

  /// `You can cancel the order before the captain exits and receives the garment bag`
  String get youCanCancelTheOrder {
    return Intl.message(
      'You can cancel the order before the captain exits and receives the garment bag',
      name: 'youCanCancelTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Additional notes`
  String get additionalNotes {
    return Intl.message(
      'Additional notes',
      name: 'additionalNotes',
      desc: '',
      args: [],
    );
  }

  /// `Laundry extras`
  String get laundryExtras {
    return Intl.message(
      'Laundry extras',
      name: 'laundryExtras',
      desc: '',
      args: [],
    );
  }

  /// `Additional detergents`
  String get additionalDetergents {
    return Intl.message(
      'Additional detergents',
      name: 'additionalDetergents',
      desc: '',
      args: [],
    );
  }

  /// `Fabric softener`
  String get fabricSoftener {
    return Intl.message(
      'Fabric softener',
      name: 'fabricSoftener',
      desc: '',
      args: [],
    );
  }

  /// `Aromatic scent`
  String get aromaticScent {
    return Intl.message(
      'Aromatic scent',
      name: 'aromaticScent',
      desc: '',
      args: [],
    );
  }

  /// `If this option is activated, the laundry will use fabric softener if required`
  String get ifThisOptionIsActivated {
    return Intl.message(
      'If this option is activated, the laundry will use fabric softener if required',
      name: 'ifThisOptionIsActivated',
      desc: '',
      args: [],
    );
  }

  /// `Type of ironing Ghutra/Shamagh`
  String get typeOfIroning {
    return Intl.message(
      'Type of ironing Ghutra/Shamagh',
      name: 'typeOfIroning',
      desc: '',
      args: [],
    );
  }

  /// `Without`
  String get without {
    return Intl.message('Without', name: 'without', desc: '', args: []);
  }

  /// `With Marzam`
  String get withMarzam {
    return Intl.message('With Marzam', name: 'withMarzam', desc: '', args: []);
  }

  /// `Rectangular`
  String get rectangular {
    return Intl.message('Rectangular', name: 'rectangular', desc: '', args: []);
  }

  /// `Squared`
  String get squared {
    return Intl.message('Squared', name: 'squared', desc: '', args: []);
  }

  /// `Starch level`
  String get starchLevel {
    return Intl.message(
      'Starch level',
      name: 'starchLevel',
      desc: '',
      args: [],
    );
  }

  /// `Little`
  String get little {
    return Intl.message('Little', name: 'little', desc: '', args: []);
  }

  /// `Medium`
  String get medium {
    return Intl.message('Medium', name: 'medium', desc: '', args: []);
  }

  /// `High`
  String get high {
    return Intl.message('High', name: 'high', desc: '', args: []);
  }

  /// `Clothing arrangement mechanism`
  String get clothingArrangementMechanism {
    return Intl.message(
      'Clothing arrangement mechanism',
      name: 'clothingArrangementMechanism',
      desc: '',
      args: [],
    );
  }

  /// `Folded`
  String get folded {
    return Intl.message('Folded', name: 'folded', desc: '', args: []);
  }

  /// `Hanged`
  String get hanged {
    return Intl.message('Hanged', name: 'hanged', desc: '', args: []);
  }

  /// `Order Schedule`
  String get orderSchedule {
    return Intl.message(
      'Order Schedule',
      name: 'orderSchedule',
      desc: '',
      args: [],
    );
  }

  /// `Your location`
  String get yourLocation {
    return Intl.message(
      'Your location',
      name: 'yourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Price Menu`
  String get priceMenu {
    return Intl.message('Price Menu', name: 'priceMenu', desc: '', args: []);
  }

  /// `Select a pickup time`
  String get selectAPickupTime {
    return Intl.message(
      'Select a pickup time',
      name: 'selectAPickupTime',
      desc: '',
      args: [],
    );
  }

  /// `Select a delivery time`
  String get selectADeliveryTime {
    return Intl.message(
      'Select a delivery time',
      name: 'selectADeliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `Reclean Smart Bag`
  String get recleanSmartBag {
    return Intl.message(
      'Reclean Smart Bag',
      name: 'recleanSmartBag',
      desc: '',
      args: [],
    );
  }

  /// `Add the Recklin Smart Bag to your order, enjoy contactless delivery, get a very convenient laundry service with no hassle, no contact with the delivery person and no need to be in your apartment at the time of pickup and delivery.`
  String get recleanSmartBagContent {
    return Intl.message(
      'Add the Recklin Smart Bag to your order, enjoy contactless delivery, get a very convenient laundry service with no hassle, no contact with the delivery person and no need to be in your apartment at the time of pickup and delivery.',
      name: 'recleanSmartBagContent',
      desc: '',
      args: [],
    );
  }

  /// `Add Reclean Smart Bag to my order`
  String get addRecleanSmartBagToMyOrder {
    return Intl.message(
      'Add Reclean Smart Bag to my order',
      name: 'addRecleanSmartBagToMyOrder',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to keep ordering?`
  String get areYouSureYouWantToKeepOrdering {
    return Intl.message(
      'Are you sure you want to keep ordering?',
      name: 'areYouSureYouWantToKeepOrdering',
      desc: '',
      args: [],
    );
  }

  /// `By clicking Continue, you agree to <a>Terms of Use and Policy</a>`
  String get byClickingContinueYouAgreeToAtermsOfUseAnd {
    return Intl.message(
      'By clicking Continue, you agree to <a>Terms of Use and Policy</a>',
      name: 'byClickingContinueYouAgreeToAtermsOfUseAnd',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Order`
  String get confirmOrder {
    return Intl.message(
      'Confirm Order',
      name: 'confirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get orderSummary {
    return Intl.message(
      'Order Summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Tax ID: {id}`
  String taxId(num id) {
    return Intl.message('Tax ID: $id', name: 'taxId', desc: '', args: [id]);
  }

  /// `Laundry and Ironing`
  String get laundryAndIroning {
    return Intl.message(
      'Laundry and Ironing',
      name: 'laundryAndIroning',
      desc: '',
      args: [],
    );
  }

  /// `Ironing`
  String get ironing {
    return Intl.message('Ironing', name: 'ironing', desc: '', args: []);
  }

  /// `Dry Cleaning`
  String get dryCleaning {
    return Intl.message(
      'Dry Cleaning',
      name: 'dryCleaning',
      desc: '',
      args: [],
    );
  }

  /// `Order value`
  String get orderValue {
    return Intl.message('Order value', name: 'orderValue', desc: '', args: []);
  }

  /// `Delivery fee`
  String get deliveryFee {
    return Intl.message(
      'Delivery fee',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `VAT(15%)`
  String get vat15 {
    return Intl.message('VAT(15%)', name: 'vat15', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `No gifts available`
  String get noGiftsAvailable {
    return Intl.message(
      'No gifts available',
      name: 'noGiftsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `{amount} Riyal`
  String riyal(num amount) {
    return Intl.message(
      '$amount Riyal',
      name: 'riyal',
      desc: '',
      args: [amount],
    );
  }

  /// `No loyalty points available`
  String get noLoyaltyPointsAvailable {
    return Intl.message(
      'No loyalty points available',
      name: 'noLoyaltyPointsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Offer code`
  String get offerCode {
    return Intl.message('Offer code', name: 'offerCode', desc: '', args: []);
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `Pay`
  String get pay {
    return Intl.message('Pay', name: 'pay', desc: '', args: []);
  }

  /// `Invoice No #{invoiceNo}`
  String invoiceNo(num invoiceNo) {
    return Intl.message(
      'Invoice No #$invoiceNo',
      name: 'invoiceNo',
      desc: '',
      args: [invoiceNo],
    );
  }

  /// `Payed Invoice`
  String get payedInvoice {
    return Intl.message(
      'Payed Invoice',
      name: 'payedInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Download Invoice`
  String get downloadInvoice {
    return Intl.message(
      'Download Invoice',
      name: 'downloadInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Balance`
  String get balance {
    return Intl.message('Balance', name: 'balance', desc: '', args: []);
  }

  /// `Payment Methods`
  String get paymentMethods {
    return Intl.message(
      'Payment Methods',
      name: 'paymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  /// `Nearby Washers`
  String get nearbyWashers {
    return Intl.message(
      'Nearby Washers',
      name: 'nearbyWashers',
      desc: '',
      args: [],
    );
  }

  /// `Located`
  String get located {
    return Intl.message('Located', name: 'located', desc: '', args: []);
  }

  /// `Our Services`
  String get ourServices {
    return Intl.message(
      'Our Services',
      name: 'ourServices',
      desc: '',
      args: [],
    );
  }

  /// `Activate the automatic payment feature from the balance`
  String get automaticPayment {
    return Intl.message(
      'Activate the automatic payment feature from the balance',
      name: 'automaticPayment',
      desc: '',
      args: [],
    );
  }

  /// `Balance amount`
  String get balanceAmount {
    return Intl.message(
      'Balance amount',
      name: 'balanceAmount',
      desc: '',
      args: [],
    );
  }

  /// `Enter the shipping balance amount`
  String get enterTheShippingBalanceAmount {
    return Intl.message(
      'Enter the shipping balance amount',
      name: 'enterTheShippingBalanceAmount',
      desc: '',
      args: [],
    );
  }

  /// `charge your balance`
  String get chargeYourBalance {
    return Intl.message(
      'charge your balance',
      name: 'chargeYourBalance',
      desc: '',
      args: [],
    );
  }

  /// `Use code`
  String get useCode {
    return Intl.message('Use code', name: 'useCode', desc: '', args: []);
  }

  /// `Win`
  String get win {
    return Intl.message('Win', name: 'win', desc: '', args: []);
  }

  /// `Points`
  String get points {
    return Intl.message('Points', name: 'points', desc: '', args: []);
  }

  /// `Wallet`
  String get wallet {
    return Intl.message('Wallet', name: 'wallet', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Previous Orders`
  String get previousOrders {
    return Intl.message(
      'Previous Orders',
      name: 'previousOrders',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `Register with application`
  String get register_with_application {
    return Intl.message(
      'Register with application',
      name: 'register_with_application',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get pleaseEnterYourName {
    return Intl.message(
      'Please enter your name',
      name: 'pleaseEnterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `I agree to the`
  String get iAgreeToThe {
    return Intl.message(
      'I agree to the',
      name: 'iAgreeToThe',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your mobile number to receive activation code`
  String get pleaseEnterYourMobileNumberToReceiveActivationCode {
    return Intl.message(
      'Please enter your mobile number to receive activation code',
      name: 'pleaseEnterYourMobileNumberToReceiveActivationCode',
      desc: '',
      args: [],
    );
  }

  /// `Send activation code`
  String get sendActivationCode {
    return Intl.message(
      'Send activation code',
      name: 'sendActivationCode',
      desc: '',
      args: [],
    );
  }

  /// `Discount 23%`
  String get discount23 {
    return Intl.message('Discount 23%', name: 'discount23', desc: '', args: []);
  }

  /// `Limited Time Offer`
  String get limitedTimeOffer {
    return Intl.message(
      'Limited Time Offer',
      name: 'limitedTimeOffer',
      desc: '',
      args: [],
    );
  }

  /// `Exchange points`
  String get exchangePoints {
    return Intl.message(
      'Exchange points',
      name: 'exchangePoints',
      desc: '',
      args: [],
    );
  }

  /// `You have {points} points`
  String youHavePoints(int points) {
    return Intl.message(
      'You have $points points',
      name: 'youHavePoints',
      desc: '',
      args: [points],
    );
  }

  /// `Online Order`
  String get onlineOrder {
    return Intl.message(
      'Online Order',
      name: 'onlineOrder',
      desc: '',
      args: [],
    );
  }

  /// `{date} Hr`
  String hour(Object date) {
    return Intl.message('$date Hr', name: 'hour', desc: '', args: [date]);
  }

  /// `don't have an account`
  String get noAccount {
    return Intl.message(
      'don\'t have an account',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get signIn {
    return Intl.message('Login', name: 'signIn', desc: '', args: []);
  }

  /// `Resend again?`
  String get resendAgain {
    return Intl.message(
      'Resend again?',
      name: 'resendAgain',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the code? Contact us now.`
  String get didNotReceiveTheCode {
    return Intl.message(
      'Didn\'t receive the code? Contact us now.',
      name: 'didNotReceiveTheCode',
      desc: '',
      args: [],
    );
  }

  /// `{meter} meter`
  String meter(Object meter) {
    return Intl.message('$meter meter', name: 'meter', desc: '', args: [meter]);
  }

  /// `1-Service`
  String get service1 {
    return Intl.message('1-Service', name: 'service1', desc: '', args: []);
  }

  /// `2-Service`
  String get service2 {
    return Intl.message('2-Service', name: 'service2', desc: '', args: []);
  }

  /// `3-Service`
  String get service3 {
    return Intl.message('3-Service', name: 'service3', desc: '', args: []);
  }

  /// `Request Schedule`
  String get requestSchedule {
    return Intl.message(
      'Request Schedule',
      name: 'requestSchedule',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to continue ordering?`
  String get areYouSureYouWantToContinueOrdering {
    return Intl.message(
      'Are you sure you want to continue ordering?',
      name: 'areYouSureYouWantToContinueOrdering',
      desc: '',
      args: [],
    );
  }

  /// `on pressing continue, you agree to`
  String get onPressingContinueYouAgree {
    return Intl.message(
      'on pressing continue, you agree to',
      name: 'onPressingContinueYouAgree',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `If this option is enabled, the laundry will use fabric softener if required.`
  String get ifThisOptionIsEnabledTheLaundryWillUseFabricSoftenerIfRequired {
    return Intl.message(
      'If this option is enabled, the laundry will use fabric softener if required.',
      name: 'ifThisOptionIsEnabledTheLaundryWillUseFabricSoftenerIfRequired',
      desc: '',
      args: [],
    );
  }

  /// `If the option is activated, the laundry will use the aromatic scent if required.`
  String get ifTheOptionIsActivatedTheLaundryWillUseTheAromaticScentIfRequired {
    return Intl.message(
      'If the option is activated, the laundry will use the aromatic scent if required.',
      name: 'ifTheOptionIsActivatedTheLaundryWillUseTheAromaticScentIfRequired',
      desc: '',
      args: [],
    );
  }

  /// `Quantity Count`
  String get quantityCount {
    return Intl.message(
      'Quantity Count',
      name: 'quantityCount',
      desc: '',
      args: [],
    );
  }

  /// `Order No {orderNumber}`
  String order_number(Object orderNumber) {
    return Intl.message(
      'Order No $orderNumber',
      name: 'order_number',
      desc: '',
      args: [orderNumber],
    );
  }

  /// `Your order will be delivered at the specified time`
  String get yourOrderWillBeDeliveredAtTheSpecifiedTime {
    return Intl.message(
      'Your order will be delivered at the specified time',
      name: 'yourOrderWillBeDeliveredAtTheSpecifiedTime',
      desc: '',
      args: [],
    );
  }

  /// `You have received your order`
  String get youHaveReceivedYourOrder {
    return Intl.message(
      'You have received your order',
      name: 'youHaveReceivedYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `You can cancel the order before the end and receive the captain's bag of clothes`
  String get youCanCancelTheOrderAtAnyTime {
    return Intl.message(
      'You can cancel the order before the end and receive the captain\'s bag of clothes',
      name: 'youCanCancelTheOrderAtAnyTime',
      desc: '',
      args: [],
    );
  }

  /// `Pay Invoice`
  String get payInvoice {
    return Intl.message('Pay Invoice', name: 'payInvoice', desc: '', args: []);
  }

  /// `Show your invoice`
  String get showYourInvoice {
    return Intl.message(
      'Show your invoice',
      name: 'showYourInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message('Price', name: 'price', desc: '', args: []);
  }

  /// `Packages`
  String get packages {
    return Intl.message('Packages', name: 'packages', desc: '', args: []);
  }

  /// `History`
  String get history {
    return Intl.message('History', name: 'history', desc: '', args: []);
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: '', args: []);
  }

  /// `Riyal`
  String get rial {
    return Intl.message('Riyal', name: 'rial', desc: '', args: []);
  }

  /// `08:00 AM - 10:00 AM`
  String get eightAMToTenAM {
    return Intl.message(
      '08:00 AM - 10:00 AM',
      name: 'eightAMToTenAM',
      desc: '',
      args: [],
    );
  }

  /// `10:00 AM - 12:00 PM`
  String get tenAMToTwelvePM {
    return Intl.message(
      '10:00 AM - 12:00 PM',
      name: 'tenAMToTwelvePM',
      desc: '',
      args: [],
    );
  }

  /// `12:00 PM - 02:00 PM`
  String get twelvePMToTwoPM {
    return Intl.message(
      '12:00 PM - 02:00 PM',
      name: 'twelvePMToTwoPM',
      desc: '',
      args: [],
    );
  }

  /// `02:00 PM - 04:00 PM`
  String get twoPMToFourPM {
    return Intl.message(
      '02:00 PM - 04:00 PM',
      name: 'twoPMToFourPM',
      desc: '',
      args: [],
    );
  }

  /// `04:00 PM - 06:00 PM`
  String get fourPMToSixPM {
    return Intl.message(
      '04:00 PM - 06:00 PM',
      name: 'fourPMToSixPM',
      desc: '',
      args: [],
    );
  }

  /// `06:00 PM - 08:00 PM`
  String get sixPMToEightPM {
    return Intl.message(
      '06:00 PM - 08:00 PM',
      name: 'sixPMToEightPM',
      desc: '',
      args: [],
    );
  }

  /// `08:00 PM - 10:00 PM`
  String get eightPMToTenPM {
    return Intl.message(
      '08:00 PM - 10:00 PM',
      name: 'eightPMToTenPM',
      desc: '',
      args: [],
    );
  }

  /// `10:00 PM - 12:00 AM`
  String get tenPMToTwelveAM {
    return Intl.message(
      '10:00 PM - 12:00 AM',
      name: 'tenPMToTwelveAM',
      desc: '',
      args: [],
    );
  }

  /// `12:00 AM - 02:00 AM`
  String get twelveAMToTwoAM {
    return Intl.message(
      '12:00 AM - 02:00 AM',
      name: 'twelveAMToTwoAM',
      desc: '',
      args: [],
    );
  }

  /// `02:00 AM - 04:00 AM`
  String get twoAMToFourAM {
    return Intl.message(
      '02:00 AM - 04:00 AM',
      name: 'twoAMToFourAM',
      desc: '',
      args: [],
    );
  }

  /// `04:00 AM - 06:00 AM`
  String get fourAMToSixAM {
    return Intl.message(
      '04:00 AM - 06:00 AM',
      name: 'fourAMToSixAM',
      desc: '',
      args: [],
    );
  }

  /// `06:00 AM - 08:00 AM`
  String get sixAMToEightAM {
    return Intl.message(
      '06:00 AM - 08:00 AM',
      name: 'sixAMToEightAM',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `To my order`
  String get toMyOrder {
    return Intl.message('To my order', name: 'toMyOrder', desc: '', args: []);
  }

  /// `Minimum order price`
  String get minimumOrderPrice {
    return Intl.message(
      'Minimum order price',
      name: 'minimumOrderPrice',
      desc: '',
      args: [],
    );
  }

  /// `Please select the wash type`
  String get pleaseSelectTheWashType {
    return Intl.message(
      'Please select the wash type',
      name: 'pleaseSelectTheWashType',
      desc: '',
      args: [],
    );
  }

  /// `Order cancelled`
  String get order_cancelled {
    return Intl.message(
      'Order cancelled',
      name: 'order_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `vat ({vat})`
  String vat(Object vat) {
    return Intl.message('vat ($vat)', name: 'vat', desc: '', args: [vat]);
  }

  /// `Total before discount`
  String get totalBeforeDiscount {
    return Intl.message(
      'Total before discount',
      name: 'totalBeforeDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Total after discount`
  String get totalAfterDiscount {
    return Intl.message(
      'Total after discount',
      name: 'totalAfterDiscount',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Current orders`
  String get currentOrders {
    return Intl.message(
      'Current orders',
      name: 'currentOrders',
      desc: '',
      args: [],
    );
  }

  /// `Delivery date`
  String get deliveryDate {
    return Intl.message(
      'Delivery date',
      name: 'deliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `No notifications`
  String get noNotifications {
    return Intl.message(
      'No notifications',
      name: 'noNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Taskora - Ragwa`
  String get app_name {
    return Intl.message(
      'Taskora - Ragwa',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Fixed Price Services`
  String get fixed_price_services {
    return Intl.message(
      'Fixed Price Services',
      name: 'fixed_price_services',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number to receive activation code`
  String get enter_mobile {
    return Intl.message(
      'Enter your mobile number to receive activation code',
      name: 'enter_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP Code`
  String get enter_otp {
    return Intl.message(
      'Enter OTP Code',
      name: 'enter_otp',
      desc: '',
      args: [],
    );
  }

  /// `OTP code sent to`
  String get otp_sent_to {
    return Intl.message(
      'OTP code sent to',
      name: 'otp_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `Resend?`
  String get resend {
    return Intl.message('Resend?', name: 'resend', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Services`
  String get services_title {
    return Intl.message('Services', name: 'services_title', desc: '', args: []);
  }

  /// `We've gathered all the services your nav_bar needs`
  String get services_subtitle {
    return Intl.message(
      'We\'ve gathered all the services your nav_bar needs',
      name: 'services_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Plumbing`
  String get categories_plumbing {
    return Intl.message(
      'Plumbing',
      name: 'categories_plumbing',
      desc: '',
      args: [],
    );
  }

  /// `Swimming Pool`
  String get categories_swimming_pool {
    return Intl.message(
      'Swimming Pool',
      name: 'categories_swimming_pool',
      desc: '',
      args: [],
    );
  }

  /// `Carpentry`
  String get categories_carpentry {
    return Intl.message(
      'Carpentry',
      name: 'categories_carpentry',
      desc: '',
      args: [],
    );
  }

  /// `Installation`
  String get categories_installation {
    return Intl.message(
      'Installation',
      name: 'categories_installation',
      desc: '',
      args: [],
    );
  }

  /// `Home Appliances`
  String get categories_home_appliances {
    return Intl.message(
      'Home Appliances',
      name: 'categories_home_appliances',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get categories_security {
    return Intl.message(
      'Security',
      name: 'categories_security',
      desc: '',
      args: [],
    );
  }

  /// `Tiling`
  String get categories_tiling {
    return Intl.message(
      'Tiling',
      name: 'categories_tiling',
      desc: '',
      args: [],
    );
  }

  /// `Cleaning`
  String get categories_cleaning {
    return Intl.message(
      'Cleaning',
      name: 'categories_cleaning',
      desc: '',
      args: [],
    );
  }

  /// `Laundry`
  String get categories_laundry {
    return Intl.message(
      'Laundry',
      name: 'categories_laundry',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get tabs_home {
    return Intl.message('Home', name: 'tabs_home', desc: '', args: []);
  }

  /// `Orders`
  String get tabs_orders {
    return Intl.message('Orders', name: 'tabs_orders', desc: '', args: []);
  }

  /// `Offers`
  String get tabs_offers {
    return Intl.message('Offers', name: 'tabs_offers', desc: '', args: []);
  }

  /// `Store`
  String get tabs_store {
    return Intl.message('Store', name: 'tabs_store', desc: '', args: []);
  }

  /// `Settings`
  String get tabs_settings {
    return Intl.message('Settings', name: 'tabs_settings', desc: '', args: []);
  }

  /// `Select Service`
  String get select_service {
    return Intl.message(
      'Select Service',
      name: 'select_service',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personal_info {
    return Intl.message(
      'Personal Information',
      name: 'personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get account_settings {
    return Intl.message(
      'Account Settings',
      name: 'account_settings',
      desc: '',
      args: [],
    );
  }

  /// `Auctions`
  String get auctions {
    return Intl.message('Auctions', name: 'auctions', desc: '', args: []);
  }

  /// `Technical Support`
  String get technical_support {
    return Intl.message(
      'Technical Support',
      name: 'technical_support',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms_of_use {
    return Intl.message(
      'Terms of Use',
      name: 'terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `About App`
  String get about_app {
    return Intl.message('About App', name: 'about_app', desc: '', args: []);
  }

  /// `Book Service`
  String get book_service {
    return Intl.message(
      'Book Service',
      name: 'book_service',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Bank Details`
  String get bank_details {
    return Intl.message(
      'Bank Details',
      name: 'bank_details',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get card_number {
    return Intl.message('Card Number', name: 'card_number', desc: '', args: []);
  }

  /// `CVV`
  String get cvv {
    return Intl.message('CVV', name: 'cvv', desc: '', args: []);
  }

  /// `Expiry Date`
  String get expiry_date {
    return Intl.message('Expiry Date', name: 'expiry_date', desc: '', args: []);
  }

  /// `Coupon Code`
  String get coupon_code {
    return Intl.message('Coupon Code', name: 'coupon_code', desc: '', args: []);
  }

  /// `Schedule Order`
  String get schedule_order {
    return Intl.message(
      'Schedule Order',
      name: 'schedule_order',
      desc: '',
      args: [],
    );
  }

  /// `Select Location`
  String get select_location {
    return Intl.message(
      'Select Location',
      name: 'select_location',
      desc: '',
      args: [],
    );
  }

  /// `Review Data`
  String get review_data {
    return Intl.message('Review Data', name: 'review_data', desc: '', args: []);
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `Service Fee`
  String get service_fee {
    return Intl.message('Service Fee', name: 'service_fee', desc: '', args: []);
  }

  /// `Total (incl. VAT)`
  String get total_vat {
    return Intl.message(
      'Total (incl. VAT)',
      name: 'total_vat',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Confirm Order`
  String get confirm_order {
    return Intl.message(
      'Confirm Order',
      name: 'confirm_order',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get track_order {
    return Intl.message('Track Order', name: 'track_order', desc: '', args: []);
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Searching for Technician`
  String get searching_technician {
    return Intl.message(
      'Searching for Technician',
      name: 'searching_technician',
      desc: '',
      args: [],
    );
  }

  /// `Technician on the way`
  String get technician_on_way {
    return Intl.message(
      'Technician on the way',
      name: 'technician_on_way',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for price confirmation`
  String get waiting_for_price {
    return Intl.message(
      'Waiting for price confirmation',
      name: 'waiting_for_price',
      desc: '',
      args: [],
    );
  }

  /// `Service Completed Successfully`
  String get service_completed {
    return Intl.message(
      'Service Completed Successfully',
      name: 'service_completed',
      desc: '',
      args: [],
    );
  }

  /// `Rate Service`
  String get rate_service {
    return Intl.message(
      'Rate Service',
      name: 'rate_service',
      desc: '',
      args: [],
    );
  }

  /// `Service Quality`
  String get service_quality {
    return Intl.message(
      'Service Quality',
      name: 'service_quality',
      desc: '',
      args: [],
    );
  }

  /// `Punctuality`
  String get punctuality {
    return Intl.message('Punctuality', name: 'punctuality', desc: '', args: []);
  }

  /// `Ease of Use & Communication`
  String get ease_of_use {
    return Intl.message(
      'Ease of Use & Communication',
      name: 'ease_of_use',
      desc: '',
      args: [],
    );
  }

  /// `Price vs Quality`
  String get price_vs_quality {
    return Intl.message(
      'Price vs Quality',
      name: 'price_vs_quality',
      desc: '',
      args: [],
    );
  }

  /// `Overall App Experience`
  String get app_experience {
    return Intl.message(
      'Overall App Experience',
      name: 'app_experience',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message('Comment', name: 'comment', desc: '', args: []);
  }

  /// `Thank you for your time`
  String get thanks_for_time {
    return Intl.message(
      'Thank you for your time',
      name: 'thanks_for_time',
      desc: '',
      args: [],
    );
  }

  /// `Ragwa Provider is a comprehensive application that connects you with a wide range of nav_bar and technical service providers easily and professionally.`
  String get about_app_description {
    return Intl.message(
      'Ragwa Provider is a comprehensive application that connects you with a wide range of nav_bar and technical service providers easily and professionally.',
      name: 'about_app_description',
      desc: '',
      args: [],
    );
  }

  /// `At Ragwa Provider, we value your privacy and strive to protect all your personal data. Only necessary data is collected to provide and improve the user experience.`
  String get privacy_policy_description {
    return Intl.message(
      'At Ragwa Provider, we value your privacy and strive to protect all your personal data. Only necessary data is collected to provide and improve the user experience.',
      name: 'privacy_policy_description',
      desc: '',
      args: [],
    );
  }

  /// `+966 55 768 6624`
  String get technical_support_contact {
    return Intl.message(
      '+966 55 768 6624',
      name: 'technical_support_contact',
      desc: '',
      args: [],
    );
  }

  /// `Riyadh - Al Malaz - 12845 - Salahuddin Road`
  String get technical_support_address {
    return Intl.message(
      'Riyadh - Al Malaz - 12845 - Salahuddin Road',
      name: 'technical_support_address',
      desc: '',
      args: [],
    );
  }

  /// `Leave your message`
  String get send_message {
    return Intl.message(
      'Leave your message',
      name: 'send_message',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get mobile {
    return Intl.message('Mobile', name: 'mobile', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Subject`
  String get subject {
    return Intl.message('Subject', name: 'subject', desc: '', args: []);
  }

  /// `Add Advertisement`
  String get add_ad {
    return Intl.message(
      'Add Advertisement',
      name: 'add_ad',
      desc: '',
      args: [],
    );
  }

  /// `Ad Title`
  String get ad_title {
    return Intl.message('Ad Title', name: 'ad_title', desc: '', args: []);
  }

  /// `Ad Description`
  String get ad_description {
    return Intl.message(
      'Ad Description',
      name: 'ad_description',
      desc: '',
      args: [],
    );
  }

  /// `Condition`
  String get condition {
    return Intl.message('Condition', name: 'condition', desc: '', args: []);
  }

  /// `New`
  String get newItem {
    return Intl.message('New', name: 'newItem', desc: '', args: []);
  }

  /// `Used`
  String get used {
    return Intl.message('Used', name: 'used', desc: '', args: []);
  }

  /// `Publish`
  String get publish {
    return Intl.message('Publish', name: 'publish', desc: '', args: []);
  }

  /// `Auction Details`
  String get auction_details {
    return Intl.message(
      'Auction Details',
      name: 'auction_details',
      desc: '',
      args: [],
    );
  }

  /// `Start Price`
  String get start_price {
    return Intl.message('Start Price', name: 'start_price', desc: '', args: []);
  }

  /// `Minimum Bid Increment`
  String get bid_increment {
    return Intl.message(
      'Minimum Bid Increment',
      name: 'bid_increment',
      desc: '',
      args: [],
    );
  }

  /// `Reserve Price`
  String get reserve_price {
    return Intl.message(
      'Reserve Price',
      name: 'reserve_price',
      desc: '',
      args: [],
    );
  }

  /// `Auction Duration`
  String get auction_duration {
    return Intl.message(
      'Auction Duration',
      name: 'auction_duration',
      desc: '',
      args: [],
    );
  }

  /// `Active Auctions`
  String get active_auctions {
    return Intl.message(
      'Active Auctions',
      name: 'active_auctions',
      desc: '',
      args: [],
    );
  }

  /// `Ended Auctions`
  String get ended_auctions {
    return Intl.message(
      'Ended Auctions',
      name: 'ended_auctions',
      desc: '',
      args: [],
    );
  }

  /// `Highest Bidder`
  String get highest_bidder {
    return Intl.message(
      'Highest Bidder',
      name: 'highest_bidder',
      desc: '',
      args: [],
    );
  }

  /// `Auction Countdown`
  String get countdown_timer {
    return Intl.message(
      'Auction Countdown',
      name: 'countdown_timer',
      desc: '',
      args: [],
    );
  }

  /// `Follow Auction`
  String get follow_auction {
    return Intl.message(
      'Follow Auction',
      name: 'follow_auction',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message('Active', name: 'active', desc: '', args: []);
  }

  /// `Ended`
  String get ended {
    return Intl.message('Ended', name: 'ended', desc: '', args: []);
  }

  /// `Pending`
  String get pending {
    return Intl.message('Pending', name: 'pending', desc: '', args: []);
  }

  /// `Loading`
  String get loading {
    return Intl.message('Loading', name: 'loading', desc: '', args: []);
  }

  /// `Unknown`
  String get unknown {
    return Intl.message('Unknown', name: 'unknown', desc: '', args: []);
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Search...`
  String get search {
    return Intl.message('Search...', name: 'search', desc: '', args: []);
  }

  // skipped getter for the 'No results found' key

  /// `Requests`
  String get requests {
    return Intl.message('Requests', name: 'requests', desc: '', args: []);
  }

  /// `Offers`
  String get offers {
    return Intl.message('Offers', name: 'offers', desc: '', args: []);
  }

  /// `Store`
  String get store {
    return Intl.message('Store', name: 'store', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
