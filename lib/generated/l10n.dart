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

  // Error handlers
  String get errorHandler_badRequest {
    return Intl.message('Bad request. Try again later.', 
        name: 'errorHandler_badRequest', desc: '', args: []);
  }

  String get errorHandler_noInternet {
    return Intl.message('Please check your internet connection.', 
        name: 'errorHandler_noInternet', desc: '', args: []);
  }

  // General strings
  String general_error(int errCode) {
    return Intl.message('Error: \$errCode', 
        name: 'general_error', desc: '', args: [errCode]);
  }

  // App specific strings
  String get app_name {
    return Intl.message('Taskora - Ragwa', name: 'app_name', desc: '', args: []);
  }

  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
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

  String get pleaseEnterYourEmail {
    return Intl.message('Please enter your email', 
        name: 'pleaseEnterYourEmail', desc: '', args: []);
  }

  String get pleaseEnterYourPassword {
    return Intl.message('Please enter your password', 
        name: 'pleaseEnterYourPassword', desc: '', args: []);
  }

  String get createNewAccount {
    return Intl.message('Create new account', 
        name: 'createNewAccount', desc: '', args: []);
  }

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

  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

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

  String get addToCart {
    return Intl.message('Add to cart', name: 'addToCart', desc: '', args: []);
  }

  String get advantages {
    return Intl.message('Advantages', name: 'advantages', desc: '', args: []);
  }

  String get aboutSupplier {
    return Intl.message('About Supplier', name: 'aboutSupplier', desc: '', args: []);
  }

  String get bad {
    return Intl.message('Bad', name: 'bad', desc: '', args: []);
  }

  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

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
  String aboutProduct(Object product) {
    return Intl.message('About Product <a>(\$product)</a>', 
        name: 'aboutProduct', desc: '', args: [product]);
  }

  String productDetails(Object product) {
    return Intl.message('Product Details <a>(\$product)</a>', 
        name: 'productDetails', desc: '', args: [product]);
  }

  String amountWillBeCharged(num amount) {
    return Intl.message('An amount of SAR \$amount will be charged to verify your card. The amount will be refunded immediately', 
        name: 'amountWillBeCharged', desc: '', args: [amount]);
  }

  String hour(Object date) {
    return Intl.message('\$date Hr', name: 'hour', desc: '', args: [date]);
  }

  String invoiceNo(num invoiceNo) {
    return Intl.message('Invoice No #\$invoiceNo', 
        name: 'invoiceNo', desc: '', args: [invoiceNo]);
  }

  String meter(Object meter) {
    return Intl.message('\$meter meter', name: 'meter', desc: '', args: [meter]);
  }

  String minimumOrder(num orders) {
    return Intl.message('Minimum order', 
        name: 'minimumOrder', desc: '', args: [orders]);
  }

  String orderNumber(Object orderNumber) {
    return Intl.message('Order No \$orderNumber', 
        name: 'orderNumber', desc: '', args: [orderNumber]);
  }

  String otpSent(String email) {
    return Intl.message('OTP sent to \$email', 
        name: 'otpSent', desc: '', args: [email]);
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

  String youHavePoints(num points) {
    return Intl.message('You have <a>\$points</a> points', 
        name: 'youHavePoints', desc: '', args: [points]);
  }

  String youHavePointsPoints(int points) {
    return Intl.message('you have \$points points', 
        name: 'youHavePointsPoints', desc: '', args: [points]);
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