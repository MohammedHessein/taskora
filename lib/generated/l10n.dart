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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  // Common strings
  String get common_ok {
    return Intl.message('OK', name: 'common_ok', desc: '', args: []);
  }

  String get common_cancel {
    return Intl.message('Cancel', name: 'common_cancel', desc: '', args: []);
  }

  String get common_yes {
    return Intl.message('Yes', name: 'common_yes', desc: '', args: []);
  }

  String get common_no {
    return Intl.message('No', name: 'common_no', desc: '', args: []);
  }

  String get common_success {
    return Intl.message('Success', name: 'common_success', desc: '', args: []);
  }

  String get common_error {
    return Intl.message('Error', name: 'common_error', desc: '', args: []);
  }

  String get common_next {
    return Intl.message('Next', name: 'common_next', desc: '', args: []);
  }

  String get common_confirm {
    return Intl.message('Confirm', name: 'common_confirm', desc: '', args: []);
  }

  String get common_somethingWentWrong {
    return Intl.message('Something went wrong. Please restart the app.', 
        name: 'common_somethingWentWrong', desc: '', args: []);
  }

  // Error handlers
  String get errorHandler_success {
    return Intl.message('Success', name: 'errorHandler_success', desc: '', args: []);
  }

  String get errorHandler_badRequest {
    return Intl.message('Bad request. Try again later.', 
        name: 'errorHandler_badRequest', desc: '', args: []);
  }

  String get errorHandler_noContent {
    return Intl.message('Success with no content.', 
        name: 'errorHandler_noContent', desc: '', args: []);
  }

  String get errorHandler_multipleChoices {
    return Intl.message('Choose an option to continue.', 
        name: 'errorHandler_multipleChoices', desc: '', args: []);
  }

  String get errorHandler_movedPermanently {
    return Intl.message('This URL is no longer available.', 
        name: 'errorHandler_movedPermanently', desc: '', args: []);
  }

  String get errorHandler_forbidden {
    return Intl.message('Forbidden request. Try again later.', 
        name: 'errorHandler_forbidden', desc: '', args: []);
  }

  String get errorHandler_unauthorized {
    return Intl.message('User unauthorized. Try again later.', 
        name: 'errorHandler_unauthorized', desc: '', args: []);
  }

  String get errorHandler_paymentRequired {
    return Intl.message('Payment required.', 
        name: 'errorHandler_paymentRequired', desc: '', args: []);
  }

  String get errorHandler_unprocessableContent {
    return Intl.message('Unprocessable data. Check and try again.', 
        name: 'errorHandler_unprocessableContent', desc: '', args: []);
  }

  String get errorHandler_badGateway {
    return Intl.message('Invalid data. Please try again.', 
        name: 'errorHandler_badGateway', desc: '', args: []);
  }

  String get errorHandler_serviceUnavailable {
    return Intl.message('Server is under maintenance.', 
        name: 'errorHandler_serviceUnavailable', desc: '', args: []);
  }

  String get errorHandler_notFound {
    return Intl.message('URL not found. Try again later.', 
        name: 'errorHandler_notFound', desc: '', args: []);
  }

  String get errorHandler_conflict {
    return Intl.message('Conflict found. Try again later.', 
        name: 'errorHandler_conflict', desc: '', args: []);
  }

  String get errorHandler_internalServerError {
    return Intl.message('Something went wrong. Please try again later.', 
        name: 'errorHandler_internalServerError', desc: '', args: []);
  }

  String get errorHandler_genericError {
    return Intl.message('Something went wrong. Please try again later.', 
        name: 'errorHandler_genericError', desc: '', args: []);
  }

  String get errorHandler_timeout {
    return Intl.message('Request timed out. Try again later.', 
        name: 'errorHandler_timeout', desc: '', args: []);
  }

  String get errorHandler_cacheError {
    return Intl.message('Cache error. Try again later.', 
        name: 'errorHandler_cacheError', desc: '', args: []);
  }

  String get errorHandler_noInternet {
    return Intl.message('Please check your internet connection.', 
        name: 'errorHandler_noInternet', desc: '', args: []);
  }

  String get errorHandler_methodNotAllowed {
    return Intl.message('Unsupported. Please try again later.', 
        name: 'errorHandler_methodNotAllowed', desc: '', args: []);
  }

  String get errorHandler_permanentRedirect {
    return Intl.message('Permanent redirect. Method and body will not change.', 
        name: 'errorHandler_permanentRedirect', desc: '', args: []);
  }

  String get errorHandler_tooManyRequests {
    return Intl.message('Too many requests. Please try again later.', 
        name: 'errorHandler_tooManyRequests', desc: '', args: []);
  }

  String get errorHandler_unavailableForLegalReasons {
    return Intl.message('Access denied due to legal reasons.', 
        name: 'errorHandler_unavailableForLegalReasons', desc: '', args: []);
  }

  String get errorHandler_unknownError {
    return Intl.message('An unknown error occurred.', 
        name: 'errorHandler_unknownError', desc: '', args: []);
  }

  String get errorHandler_connectionError {
    return Intl.message('Connection to the server failed.', 
        name: 'errorHandler_connectionError', desc: '', args: []);
  }

  String get errorHandler_requestCancelled {
    return Intl.message('Request to the server was cancelled.', 
        name: 'errorHandler_requestCancelled', desc: '', args: []);
  }

  String get errorHandler_connectionTimeout {
    return Intl.message('Connection timeout with the server.', 
        name: 'errorHandler_connectionTimeout', desc: '', args: []);
  }

  String get errorHandler_receiveTimeout {
    return Intl.message('Receive timeout in connection with the server.', 
        name: 'errorHandler_receiveTimeout', desc: '', args: []);
  }

  String get errorHandler_sendTimeout {
    return Intl.message('Send timeout in connection with the server.', 
        name: 'errorHandler_sendTimeout', desc: '', args: []);
  }

  String get errorHandler_somethingWentWrong {
    return Intl.message('Something went wrong.', 
        name: 'errorHandler_somethingWentWrong', desc: '', args: []);
  }

  // Error widgets
  String get errorWidgets_errorOccurred {
    return Intl.message('An error occurred!', 
        name: 'errorWidgets_errorOccurred', desc: '', args: []);
  }

  String get errorWidgets_errorSummary {
    return Intl.message('Error Summary', 
        name: 'errorWidgets_errorSummary', desc: '', args: []);
  }

  String get errorWidgets_errorContext {
    return Intl.message('Error Context', 
        name: 'errorWidgets_errorContext', desc: '', args: []);
  }

  String get errorWidgets_exception {
    return Intl.message('Exception', 
        name: 'errorWidgets_exception', desc: '', args: []);
  }

  String get errorWidgets_errorCode {
    return Intl.message('Error Code', 
        name: 'errorWidgets_errorCode', desc: '', args: []);
  }

  // No internet widget
  String get noInternetWidget_noInternetConnection {
    return Intl.message('No Internet Connection', 
        name: 'noInternetWidget_noInternetConnection', desc: '', args: []);
  }

  String get noInternetWidget_checkConnection {
    return Intl.message('Something is wrong with your connection. Please try again later.', 
        name: 'noInternetWidget_checkConnection', desc: '', args: []);
  }

  // General
  String general_error(int errCode) {
    return Intl.message('Error: \$errCode', 
        name: 'general_error', desc: '', args: [errCode]);
  }

  String get general_noImageAvailable {
    return Intl.message('No image available', 
        name: 'general_noImageAvailable', desc: '', args: []);
  }

  // Time ago plurals
  String timeAgo_second(num count) {
    return Intl.plural(count,
        zero: 'just now',
        one: '1 second ago',
        other: '\$count seconds ago',
        name: 'timeAgo_second',
        desc: '',
        args: [count]);
  }

  String timeAgo_minute(num count) {
    return Intl.plural(count,
        one: '1 minute ago',
        other: '\$count minutes ago',
        name: 'timeAgo_minute',
        desc: '',
        args: [count]);
  }

  String timeAgo_hour(num count) {
    return Intl.plural(count,
        one: '1 hour ago',
        other: '\$count hours ago',
        name: 'timeAgo_hour',
        desc: '',
        args: [count]);
  }

  String timeAgo_day(num count) {
    return Intl.plural(count,
        one: '1 day ago',
        other: '\$count days ago',
        name: 'timeAgo_day',
        desc: '',
        args: [count]);
  }

  // Update
  String get update_required {
    return Intl.message('Update Required', name: 'update_required', desc: '', args: []);
  }

  String get update_available {
    return Intl.message('Update Available', name: 'update_available', desc: '', args: []);
  }

  String get update_requiredBody {
    return Intl.message('A new version of the app is required to continue using it. Please update.', 
        name: 'update_requiredBody', desc: '', args: []);
  }

  String get update_availableBody {
    return Intl.message('A new version is available. Update now for new features.', 
        name: 'update_availableBody', desc: '', args: []);
  }

  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  // Onboarding
  String get onboardingTitle1 {
    return Intl.message('Browse your favorite products easily and quickly from your mobile!', 
        name: 'onboardingTitle1', desc: '', args: []);
  }

  String get onboardingTitle2 {
    return Intl.message('Order at the click of a button and track your delivery status in real time', 
        name: 'onboardingTitle2', desc: '', args: []);
  }

  String get onboardingTitle3 {
    return Intl.message('Take advantage of daily deals and exclusive discounts for you!', 
        name: 'onboardingTitle3', desc: '', args: []);
  }

  // Authentication
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  String get dontHaveAnAccountAregistera {
    return Intl.message('Don\'t have an account? <a>Register</a>', 
        name: 'dontHaveAnAccountAregistera', desc: '', args: []);
  }

  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  String get rememberMe {
    return Intl.message('Remember Me', name: 'rememberMe', desc: '', args: []);
  }

  String get forgetPass {
    return Intl.message('Forget Pass', name: 'forgetPass', desc: '', args: []);
  }

  String get pleaseEnterYourEmail {
    return Intl.message('Please enter your email', 
        name: 'pleaseEnterYourEmail', desc: '', args: []);
  }

  String get pleaseEnterAValidEmail {
    return Intl.message('Please enter a valid email', 
        name: 'pleaseEnterAValidEmail', desc: '', args: []);
  }

  String get pleaseEnterYourPassword {
    return Intl.message('Please enter your password', 
        name: 'pleaseEnterYourPassword', desc: '', args: []);
  }

  String get createNewAccount {
    return Intl.message('Create new account', 
        name: 'createNewAccount', desc: '', args: []);
  }

  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  String get phoneNumber {
    return Intl.message('Phone Number', name: 'phoneNumber', desc: '', args: []);
  }

  String get passwordConfirmation {
    return Intl.message('Password Confirmation', name: 'passwordConfirmation', desc: '', args: []);
  }

  String get agreeToTermsAndPolicies {
    return Intl.message('By creating an account, you agree to all of our <a>Terms & Conditions</a> and <b>Privacy policies</b>', 
        name: 'agreeToTermsAndPolicies', desc: '', args: []);
  }

  String get pleaseEnterYourFirstName {
    return Intl.message('Please enter your first name', 
        name: 'pleaseEnterYourFirstName', desc: '', args: []);
  }

  String get pleaseEnterYourLastName {
    return Intl.message('Please enter your last name', 
        name: 'pleaseEnterYourLastName', desc: '', args: []);
  }

  String get pleaseEnterYourPhoneNumber {
    return Intl.message('Please enter your phone number', 
        name: 'pleaseEnterYourPhoneNumber', desc: '', args: []);
  }

  String get pleaseEnterAValidPhoneNumber {
    return Intl.message('Please enter a valid phone number', 
        name: 'pleaseEnterAValidPhoneNumber', desc: '', args: []);
  }

  String get yourPasswordMustBeAtLeast8Characters {
    return Intl.message('Your password must be at least 8 characters', 
        name: 'yourPasswordMustBeAtLeast8Characters', desc: '', args: []);
  }

  String get pleaseConfirmYourPassword {
    return Intl.message('Please confirm your password', 
        name: 'pleaseConfirmYourPassword', desc: '', args: []);
  }

  String get passwordsDoesntMatch {
    return Intl.message('Passwords doesn\'t match', 
        name: 'passwordsDoesntMatch', desc: '', args: []);
  }

  String get warning {
    return Intl.message('Warning', name: 'warning', desc: '', args: []);
  }

  String get pleaseAcceptTheTermsAndConditions {
    return Intl.message('Please accept the terms and conditions', 
        name: 'pleaseAcceptTheTermsAndConditions', desc: '', args: []);
  }

  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  String get surName {
    return Intl.message('Sur Name', name: 'surName', desc: '', args: []);
  }

  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  String get byCreatingAnAccountYouAgreeToOurTermsConditions {
    return Intl.message('By creating an account, you agree to our <a>Terms & Conditions</a> and <b>Privacy Policy</b>', 
        name: 'byCreatingAnAccountYouAgreeToOurTermsConditions', desc: '', args: []);
  }

  String get verifyAccount {
    return Intl.message('Verify Account', name: 'verifyAccount', desc: '', args: []);
  }

  String get enterConfirmationCode {
    return Intl.message('Enter Confirmation Code', 
        name: 'enterConfirmationCode', desc: '', args: []);
  }

  String otpSent(String email) {
    return Intl.message('OTP sent to \$email', 
        name: 'otpSent', desc: '', args: [email]);
  }

  String get resendOtp {
    return Intl.message('Resend OTP', name: 'resendOtp', desc: '', args: []);
  }

  String get areYouSureYouWantToCloseTheApp {
    return Intl.message('Are you sure you want to close the app?', 
        name: 'areYouSureYouWantToCloseTheApp', desc: '', args: []);
  }

  String get changePassword {
    return Intl.message('Change Password', name: 'changePassword', desc: '', args: []);
  }

  String get setANewPassword {
    return Intl.message('Set a new password', name: 'setANewPassword', desc: '', args: []);
  }

  String get pleaseEnterYourEmailAddress {
    return Intl.message('Please enter your email address', 
        name: 'pleaseEnterYourEmailAddress', desc: '', args: []);
  }

  String get pleaseEnterAValidEmailAddress {
    return Intl.message('Please enter a valid email address', 
        name: 'pleaseEnterAValidEmailAddress', desc: '', args: []);
  }

  String get alreadyHaveAnAccountLogin {
    return Intl.message('Already have an account? <a>Login</a>', 
        name: 'alreadyHaveAnAccountLogin', desc: '', args: []);
  }

  // Shopping
  String get addToCart {
    return Intl.message('Add to cart', name: 'addToCart', desc: '', args: []);
  }

  String aboutProduct(Object product) {
    return Intl.message('About Product <a>(\$product)</a>', 
        name: 'aboutProduct', desc: '', args: [product]);
  }

  String get advantages {
    return Intl.message('Advantages', name: 'advantages', desc: '', args: []);
  }

  String productDetails(Object product) {
    return Intl.message('Product Details <a>(\$product)</a>', 
        name: 'productDetails', desc: '', args: [product]);
  }

  String get wholesalePrice {
    return Intl.message('Wholesale price', name: 'wholesalePrice', desc: '', args: []);
  }

  String get retailPrice {
    return Intl.message('Retail price', name: 'retailPrice', desc: '', args: []);
  }

  // Navigation
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  String get orders {
    return Intl.message('Orders', name: 'orders', desc: '', args: []);
  }

  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  // General UI
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  String get confirmOrder {
    return Intl.message('Confirm Order', name: 'confirmOrder', desc: '', args: []);
  }

  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  String get balance {
    return Intl.message('Balance', name: 'balance', desc: '', args: []);
  }

  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  // Additional app strings
  String get exchangePoints {
    return Intl.message('Exchange points', name: 'exchangePoints', desc: '', args: []);
  }

  String get onlineOrder {
    return Intl.message('Online Order', name: 'onlineOrder', desc: '', args: []);
  }

  String get orderCancelled {
    return Intl.message('Order cancelled', name: 'orderCancelled', desc: '', args: []);
  }

  String get resendAgain {
    return Intl.message('Resend again?', name: 'resendAgain', desc: '', args: []);
  }

  String get signIn {
    return Intl.message('Login', name: 'signIn', desc: '', args: []);
  }

  // Parameterized messages
  String orderNumber(Object orderNumber) {
    return Intl.message('Order No \$orderNumber', 
        name: 'orderNumber', desc: '', args: [orderNumber]);
  }

  String youHavePoints(num points) {
    return Intl.message('You have <a>\$points</a> points', 
        name: 'youHavePoints', desc: '', args: [points]);
  }

  String riyal(num amount) {
    return Intl.message('\$amount Riyal', name: 'riyal', desc: '', args: [amount]);
  }

  String taxId(num id) {
    return Intl.message('Tax ID: \$id', name: 'taxId', desc: '', args: [id]);
  }

  String vat(Object vat) {
    return Intl.message('vat (\$vat)', name: 'vat', desc: '', args: [vat]);
  }

  String hour(Object date) {
    return Intl.message('\$date Hr', name: 'hour', desc: '', args: [date]);
  }

  String meter(Object meter) {
    return Intl.message('\$meter meter', name: 'meter', desc: '', args: [meter]);
  }

  String minimumOrder(num orders) {
    return Intl.message('Minimum order', 
        name: 'minimumOrder', desc: '', args: [orders]);
  }

  String invoiceNo(num invoiceNo) {
    return Intl.message('Invoice No #\$invoiceNo', 
        name: 'invoiceNo', desc: '', args: [invoiceNo]);
  }

  String amountWillBeCharged(num amount) {
    return Intl.message('An amount of SAR \$amount will be charged to verify your card. The amount will be refunded immediately', 
        name: 'amountWillBeCharged', desc: '', args: [amount]);
  }

  // App specific
  String get app_name {
    return Intl.message('Taskora - Ragwa', name: 'app_name', desc: '', args: []);
  }

  String get fixed_price_services {
    return Intl.message('Fixed Price Services', name: 'fixed_price_services', desc: '', args: []);
  }

  String get enter_mobile {
    return Intl.message('Enter your mobile number to receive activation code', 
        name: 'enter_mobile', desc: '', args: []);
  }

  String get enter_otp {
    return Intl.message('Enter OTP Code', name: 'enter_otp', desc: '', args: []);
  }

  String get otp_sent_to {
    return Intl.message('OTP code sent to', name: 'otp_sent_to', desc: '', args: []);
  }

  String get resend {
    return Intl.message('Resend?', name: 'resend', desc: '', args: []);
  }

  String get services_title {
    return Intl.message('Services', name: 'services_title', desc: '', args: []);
  }

  String get services_subtitle {
    return Intl.message('We\'ve gathered all the services your home needs', 
        name: 'services_subtitle', desc: '', args: []);
  }

  String get select_service {
    return Intl.message('Select Service', name: 'select_service', desc: '', args: []);
  }

  String get personal_info {
    return Intl.message('Personal Information', name: 'personal_info', desc: '', args: []);
  }

  String get account_settings {
    return Intl.message('Account Settings', name: 'account_settings', desc: '', args: []);
  }

  String get auctions {
    return Intl.message('Auctions', name: 'auctions', desc: '', args: []);
  }

  String get technical_support {
    return Intl.message('Technical Support', name: 'technical_support', desc: '', args: []);
  }

  String get privacy_policy {
    return Intl.message('Privacy Policy', name: 'privacy_policy', desc: '', args: []);
  }

  String get terms_of_use {
    return Intl.message('Terms of Use', name: 'terms_of_use', desc: '', args: []);
  }

  String get about_app {
    return Intl.message('About App', name: 'about_app', desc: '', args: []);
  }

  String get book_service {
    return Intl.message('Book Service', name: 'book_service', desc: '', args: []);
  }

  String get payment_method {
    return Intl.message('Payment Method', name: 'payment_method', desc: '', args: []);
  }

  String get bank_details {
    return Intl.message('Bank Details', name: 'bank_details', desc: '', args: []);
  }

  String get card_number {
    return Intl.message('Card Number', name: 'card_number', desc: '', args: []);
  }

  String get cvv {
    return Intl.message('CVV', name: 'cvv', desc: '', args: []);
  }

  String get expiry_date {
    return Intl.message('Expiry Date', name: 'expiry_date', desc: '', args: []);
  }

  String get coupon_code {
    return Intl.message('Coupon Code', name: 'coupon_code', desc: '', args: []);
  }

  String get schedule_order {
    return Intl.message('Schedule Order', name: 'schedule_order', desc: '', args: []);
  }

  String get select_location {
    return Intl.message('Select Location', name: 'select_location', desc: '', args: []);
  }

  String get review_data {
    return Intl.message('Review Data', name: 'review_data', desc: '', args: []);
  }

  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  String get service_fee {
    return Intl.message('Service Fee', name: 'service_fee', desc: '', args: []);
  }

  String get total_vat {
    return Intl.message('Total (incl. VAT)', name: 'total_vat', desc: '', args: []);
  }

  String get track_order {
    return Intl.message('Track Order', name: 'track_order', desc: '', args: []);
  }

  String get order_details {
    return Intl.message('Order Details', name: 'order_details', desc: '', args: []);
  }

  String get searching_technician {
    return Intl.message('Searching for Technician', name: 'searching_technician', desc: '', args: []);
  }

  String get technician_on_way {
    return Intl.message('Technician on the way', name: 'technician_on_way', desc: '', args: []);
  }

  String get waiting_for_price {
    return Intl.message('Waiting for price confirmation', name: 'waiting_for_price', desc: '', args: []);
  }

  String get service_completed {
    return Intl.message('Service Completed Successfully', name: 'service_completed', desc: '', args: []);
  }

  String get rate_service {
    return Intl.message('Rate Service', name: 'rate_service', desc: '', args: []);
  }

  String get service_quality {
    return Intl.message('Service Quality', name: 'service_quality', desc: '', args: []);
  }

  String get punctuality {
    return Intl.message('Punctuality', name: 'punctuality', desc: '', args: []);
  }

  String get ease_of_use {
    return Intl.message('Ease of Use & Communication', name: 'ease_of_use', desc: '', args: []);
  }

  String get price_vs_quality {
    return Intl.message('Price vs Quality', name: 'price_vs_quality', desc: '', args: []);
  }

  String get app_experience {
    return Intl.message('Overall App Experience', name: 'app_experience', desc: '', args: []);
  }

  String get comment {
    return Intl.message('Comment', name: 'comment', desc: '', args: []);
  }

  String get thanks_for_time {
    return Intl.message('Thank you for your time', name: 'thanks_for_time', desc: '', args: []);
  }

  String get about_app_description {
    return Intl.message('Ragwa Provider is a comprehensive application that connects you with a wide range of home and technical service providers easily and professionally.', 
        name: 'about_app_description', desc: '', args: []);
  }

  String get privacy_policy_description {
    return Intl.message('At Ragwa Provider, we value your privacy and strive to protect all your personal data. Only necessary data is collected to provide and improve the user experience.', 
        name: 'privacy_policy_description', desc: '', args: []);
  }

  String get technical_support_contact {
    return Intl.message('+966 55 768 6624', name: 'technical_support_contact', desc: '', args: []);
  }

  String get technical_support_address {
    return Intl.message('Riyadh - Al Malaz - 12845 - Salahuddin Road', 
        name: 'technical_support_address', desc: '', args: []);
  }

  String get send_message {
    return Intl.message('Leave your message', name: 'send_message', desc: '', args: []);
  }

  String get mobile {
    return Intl.message('Mobile', name: 'mobile', desc: '', args: []);
  }

  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  String get subject {
    return Intl.message('Subject', name: 'subject', desc: '', args: []);
  }

  String get add_ad {
    return Intl.message('Add Advertisement', name: 'add_ad', desc: '', args: []);
  }

  String get ad_title {
    return Intl.message('Ad Title', name: 'ad_title', desc: '', args: []);
  }

  String get ad_description {
    return Intl.message('Ad Description', name: 'ad_description', desc: '', args: []);
  }

  String get condition {
    return Intl.message('Condition', name: 'condition', desc: '', args: []);
  }

  String get new {
    return Intl.message('New', name: 'new', desc: '', args: []);
  }

  String get used {
    return Intl.message('Used', name: 'used', desc: '', args: []);
  }

  String get publish {
    return Intl.message('Publish', name: 'publish', desc: '', args: []);
  }

  String get auction_details {
    return Intl.message('Auction Details', name: 'auction_details', desc: '', args: []);
  }

  String get start_price {
    return Intl.message('Start Price', name: 'start_price', desc: '', args: []);
  }

  String get bid_increment {
    return Intl.message('Minimum Bid Increment', name: 'bid_increment', desc: '', args: []);
  }

  String get reserve_price {
    return Intl.message('Reserve Price', name: 'reserve_price', desc: '', args: []);
  }

  String get auction_duration {
    return Intl.message('Auction Duration', name: 'auction_duration', desc: '', args: []);
  }

  String get active_auctions {
    return Intl.message('Active Auctions', name: 'active_auctions', desc: '', args: []);
  }

  String get ended_auctions {
    return Intl.message('Ended Auctions', name: 'ended_auctions', desc: '', args: []);
  }

  String get highest_bidder {
    return Intl.message('Highest Bidder', name: 'highest_bidder', desc: '', args: []);
  }

  String get countdown_timer {
    return Intl.message('Auction Countdown', name: 'countdown_timer', desc: '', args: []);
  }

  String get follow_auction {
    return Intl.message('Follow Auction', name: 'follow_auction', desc: '', args: []);
  }

  String get active {
    return Intl.message('Active', name: 'active', desc: '', args: []);
  }

  String get ended {
    return Intl.message('Ended', name: 'ended', desc: '', args: []);
  }

  String get pending {
    return Intl.message('Pending', name: 'pending', desc: '', args: []);
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