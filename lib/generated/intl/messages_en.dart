// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(product) => "About Product <a>(\${product})</a>";
  static String m1(amount) => "An amount of SAR \${amount} will be charged to verify your card. The amount will be refunded immediately";
  static String m2(errCode) => "Error: \${errCode}";
  static String m3(date) => "\${date} Hr";
  static String m4(invoiceNo) => "Invoice No #\${invoiceNo}";
  static String m5(meter) => "\${meter} meter";
  static String m6(orders) => "Minimum order";
  static String m7(orderNumber) => "Order No \${orderNumber}";
  static String m8(email) => "OTP sent to \${email}";
  static String m9(product) => "Product Details <a>(\${product})</a>";
  static String m10(amount) => "\${amount} Riyal";
  static String m11(id) => "Tax ID: \${id}";
  static String m12(count) => "\${Intl.plural(count, one: '1 day ago', other: '\${count} days ago')}";
  static String m13(count) => "\${Intl.plural(count, one: '1 hour ago', other: '\${count} hours ago')}";
  static String m14(count) => "\${Intl.plural(count, one: '1 minute ago', other: '\${count} minutes ago')}";
  static String m15(count) => "\${Intl.plural(count, zero: 'just now', one: '1 second ago', other: '\${count} seconds ago')}";
  static String m16(vat) => "vat (\${vat})";
  static String m17(points) => "You have <a>\${points}</a> points";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutProduct": m0,
        "aboutSupplier": MessageLookupByLibrary.simpleMessage("About Supplier"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Add to cart"),
        "advantages": MessageLookupByLibrary.simpleMessage("Advantages"),
        "amountWillBeCharged": m1,
        "app_name": MessageLookupByLibrary.simpleMessage("Taskora - Ragwa"),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cart": MessageLookupByLibrary.simpleMessage("Cart"),
        "categories": MessageLookupByLibrary.simpleMessage("Categories"),
        "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
        "common_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "common_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "common_error": MessageLookupByLibrary.simpleMessage("Error"),
        "common_next": MessageLookupByLibrary.simpleMessage("Next"),
        "common_no": MessageLookupByLibrary.simpleMessage("No"),
        "common_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "common_success": MessageLookupByLibrary.simpleMessage("Success"),
        "common_yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmOrder": MessageLookupByLibrary.simpleMessage("Confirm Order"),
        "createNewAccount": MessageLookupByLibrary.simpleMessage("Create new account"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "errorHandler_badRequest": MessageLookupByLibrary.simpleMessage("Bad request. Try again later."),
        "errorHandler_noInternet": MessageLookupByLibrary.simpleMessage("Please check your internet connection."),
        "exchangePoints": MessageLookupByLibrary.simpleMessage("Exchange points"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "general_error": m2,
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "hour": m3,
        "invoiceNo": m4,
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "meter": m5,
        "minimumOrder": m6,
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "onlineOrder": MessageLookupByLibrary.simpleMessage("Online Order"),
        "orderCancelled": MessageLookupByLibrary.simpleMessage("Order cancelled"),
        "orderNumber": m7,
        "orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "otpSent": m8,
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone Number"),
        "pleaseEnterYourEmail": MessageLookupByLibrary.simpleMessage("Please enter your email"),
        "pleaseEnterYourPassword": MessageLookupByLibrary.simpleMessage("Please enter your password"),
        "productDetails": m9,
        "resendAgain": MessageLookupByLibrary.simpleMessage("Resend again?"),
        "riyal": m10,
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "signIn": MessageLookupByLibrary.simpleMessage("Login"),
        "taxId": m11,
        "timeAgo_day": m12,
        "timeAgo_hour": m13,
        "timeAgo_minute": m14,
        "timeAgo_second": m15,
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "vat": m16,
        "youHavePoints": m17,
      };
}