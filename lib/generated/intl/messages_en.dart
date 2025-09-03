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

  static String m0(product) => "About Product <a>(${product})</a>";

  static String m1(amount) =>
      "An amount of SAR ${amount} will be charged to verify your card. The amount will be refunded immediately";

  static String m2(errCode) => "Error: ${errCode}";

  static String m3(date) => "${date} Hr";

  static String m4(invoiceNo) => "Invoice No #${invoiceNo}";

  static String m5(meter) => "${meter} meter";

  static String m6(orders) => "Minimum order";

  static String m7(orderNumber) => "Order No ${orderNumber}";

  static String m8(email) => "OTP sent to ${email}";

  static String m9(product) => "Product Details <a>(${product})</a>";

  static String m10(amount) => "${amount} Riyal";

  static String m11(id) => "Tax ID: ${id}";

  static String m12(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m14(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m15(count) =>
      "${Intl.plural(count, zero: 'just now', one: '1 second ago', other: '${count} seconds ago')}";

  static String m16(vat) => "vat (${vat})";

  static String m17(points) => "You have <a>${points}</a> points";

  static String m18(points) => "you have ${points} points";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutProduct": m0,
        "aboutSupplier": MessageLookupByLibrary.simpleMessage("About Supplier"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addRecleanSmartBagToMyOrder": MessageLookupByLibrary.simpleMessage(
            "Add Reclean Smart Bag to my order"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Add to cart"),
        "additionalDetergents":
            MessageLookupByLibrary.simpleMessage("Additional detergents"),
        "additionalNotes":
            MessageLookupByLibrary.simpleMessage("Additional notes"),
        "advantages": MessageLookupByLibrary.simpleMessage("Advantages"),
        "agreeToTermsAndPolicies": MessageLookupByLibrary.simpleMessage(
            "By creating an account, you agree to all of our <a>Terms & Conditions</a> and <b>Privacy policies</b>"),
        "alreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "alreadyHaveAnAccountLogin": MessageLookupByLibrary.simpleMessage(
            "Already have an account? <a>Login</a>"),
        "amountWillBeCharged": m1,
        "areYouSureYouWantToCloseTheApp": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to close the app?"),
        "areYouSureYouWantToContinueOrdering":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to continue ordering?"),
        "areYouSureYouWantToKeepOrdering": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to keep ordering?"),
        "aromaticScent": MessageLookupByLibrary.simpleMessage("Aromatic scent"),
        "automaticPayment": MessageLookupByLibrary.simpleMessage(
            "Activate the automatic payment feature from the balance"),
        "bad": MessageLookupByLibrary.simpleMessage("Bad"),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "balanceAmount": MessageLookupByLibrary.simpleMessage("Balance amount"),
        "buyerInformation":
            MessageLookupByLibrary.simpleMessage("Buyer information"),
        "byClickingContinueYouAgreeToAtermsOfUseAnd":
            MessageLookupByLibrary.simpleMessage(
                "By clicking Continue, you agree to <a>Terms of Use and Policy</a>"),
        "byCreatingAnAccountYouAgreeToOurTermsConditions":
            MessageLookupByLibrary.simpleMessage(
                "By creating an account, you agree to our <a>Terms & Conditions</a> and <b>Privacy Policy</b>"),
        "cart": MessageLookupByLibrary.simpleMessage("Cart"),
        "cashOnDelivery":
            MessageLookupByLibrary.simpleMessage("Cash on Delivery"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "chargeYourBalance":
            MessageLookupByLibrary.simpleMessage("charge your balance"),
        "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
        "clothesAreNotConsideredForYou": MessageLookupByLibrary.simpleMessage(
            "Clothes are not considered for you"),
        "clothingArrangementMechanism": MessageLookupByLibrary.simpleMessage(
            "Clothing arrangement mechanism"),
        "common_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "common_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "common_error": MessageLookupByLibrary.simpleMessage("Error"),
        "common_next": MessageLookupByLibrary.simpleMessage("Next"),
        "common_no": MessageLookupByLibrary.simpleMessage("No"),
        "common_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "common_somethingWentWrong": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please restart the app."),
        "common_success": MessageLookupByLibrary.simpleMessage("Success"),
        "common_yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "confirmOrder": MessageLookupByLibrary.simpleMessage("Confirm Order"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Create new account"),
        "currentOrders": MessageLookupByLibrary.simpleMessage("Current orders"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Delivery date"),
        "deliveryFee": MessageLookupByLibrary.simpleMessage("Delivery fee"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "didNotReceiveTheCode": MessageLookupByLibrary.simpleMessage(
            "Didn\'t receive the code? Contact us now."),
        "discount23": MessageLookupByLibrary.simpleMessage("Discount 23%"),
        "dontHaveAnAccountAregistera": MessageLookupByLibrary.simpleMessage(
            "Don\'t have an account? <a>Register</a>"),
        "downloadInvoice":
            MessageLookupByLibrary.simpleMessage("Download Invoice"),
        "dryClean": MessageLookupByLibrary.simpleMessage("Dry clean"),
        "dryCleaning": MessageLookupByLibrary.simpleMessage("Dry Cleaning"),
        "eightAMToTenAM":
            MessageLookupByLibrary.simpleMessage("08:00 AM - 10:00 AM"),
        "eightPMToTenPM":
            MessageLookupByLibrary.simpleMessage("08:00 PM - 10:00 PM"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enterConfirmationCode":
            MessageLookupByLibrary.simpleMessage("Enter Confirmation Code"),
        "enterTheShippingBalanceAmount": MessageLookupByLibrary.simpleMessage(
            "Enter the shipping balance amount"),
        "errorHandler_badGateway": MessageLookupByLibrary.simpleMessage(
            "Invalid data. Please try again."),
        "errorHandler_badRequest": MessageLookupByLibrary.simpleMessage(
            "Bad request. Try again later."),
        "errorHandler_cacheError": MessageLookupByLibrary.simpleMessage(
            "Cache error. Try again later."),
        "errorHandler_conflict": MessageLookupByLibrary.simpleMessage(
            "Conflict found. Try again later."),
        "errorHandler_connectionError": MessageLookupByLibrary.simpleMessage(
            "Connection to the server failed."),
        "errorHandler_connectionTimeout": MessageLookupByLibrary.simpleMessage(
            "Connection timeout with the server."),
        "errorHandler_forbidden": MessageLookupByLibrary.simpleMessage(
            "Forbidden request. Try again later."),
        "errorHandler_genericError": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please try again later."),
        "errorHandler_internalServerError":
            MessageLookupByLibrary.simpleMessage(
                "Something went wrong. Please try again later."),
        "errorHandler_methodNotAllowed": MessageLookupByLibrary.simpleMessage(
            "Unsupported. Please try again later."),
        "errorHandler_movedPermanently": MessageLookupByLibrary.simpleMessage(
            "This URL is no longer available."),
        "errorHandler_multipleChoices": MessageLookupByLibrary.simpleMessage(
            "Choose an option to continue."),
        "errorHandler_noContent":
            MessageLookupByLibrary.simpleMessage("Success with no content."),
        "errorHandler_noInternet": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection."),
        "errorHandler_notFound": MessageLookupByLibrary.simpleMessage(
            "URL not found. Try again later."),
        "errorHandler_paymentRequired":
            MessageLookupByLibrary.simpleMessage("Payment required."),
        "errorHandler_permanentRedirect": MessageLookupByLibrary.simpleMessage(
            "Permanent redirect. Method and body will not change."),
        "errorHandler_receiveTimeout": MessageLookupByLibrary.simpleMessage(
            "Receive timeout in connection with the server."),
        "errorHandler_requestCancelled": MessageLookupByLibrary.simpleMessage(
            "Request to the server was cancelled."),
        "errorHandler_sendTimeout": MessageLookupByLibrary.simpleMessage(
            "Send timeout in connection with the server."),
        "errorHandler_serviceUnavailable": MessageLookupByLibrary.simpleMessage(
            "Server is under maintenance."),
        "errorHandler_somethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong."),
        "errorHandler_success": MessageLookupByLibrary.simpleMessage("Success"),
        "errorHandler_timeout": MessageLookupByLibrary.simpleMessage(
            "Request timed out. Try again later."),
        "errorHandler_tooManyRequests": MessageLookupByLibrary.simpleMessage(
            "Too many requests. Please try again later."),
        "errorHandler_unauthorized": MessageLookupByLibrary.simpleMessage(
            "User unauthorized. Try again later."),
        "errorHandler_unavailableForLegalReasons":
            MessageLookupByLibrary.simpleMessage(
                "Access denied due to legal reasons."),
        "errorHandler_unknownError":
            MessageLookupByLibrary.simpleMessage("An unknown error occurred."),
        "errorHandler_unprocessableContent":
            MessageLookupByLibrary.simpleMessage(
                "Unprocessable data. Check and try again."),
        "errorWidgets_errorCode":
            MessageLookupByLibrary.simpleMessage("Error Code"),
        "errorWidgets_errorContext":
            MessageLookupByLibrary.simpleMessage("Error Context"),
        "errorWidgets_errorOccurred":
            MessageLookupByLibrary.simpleMessage("An error occurred!"),
        "errorWidgets_errorSummary":
            MessageLookupByLibrary.simpleMessage("Error Summary"),
        "errorWidgets_exception":
            MessageLookupByLibrary.simpleMessage("Exception"),
        "excellent": MessageLookupByLibrary.simpleMessage("Excellent"),
        "exchangePoints":
            MessageLookupByLibrary.simpleMessage("Exchange points"),
        "fabricSoftener":
            MessageLookupByLibrary.simpleMessage("Fabric softener"),
        "feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "finalizePayment":
            MessageLookupByLibrary.simpleMessage("Finalize Payment"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "folded": MessageLookupByLibrary.simpleMessage("Folded"),
        "forgetPass": MessageLookupByLibrary.simpleMessage("Forget Pass"),
        "fourAMToSixAM":
            MessageLookupByLibrary.simpleMessage("04:00 AM - 06:00 AM"),
        "fourPMToSixPM":
            MessageLookupByLibrary.simpleMessage("04:00 PM - 06:00 PM"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "general_error": m2,
        "general_noImageAvailable":
            MessageLookupByLibrary.simpleMessage("No image available"),
        "good": MessageLookupByLibrary.simpleMessage("Good"),
        "grandTotal": MessageLookupByLibrary.simpleMessage("Grand Total"),
        "hangItOnTheDoorWeTakeItPrepareIt": MessageLookupByLibrary.simpleMessage(
            "Hang it on the door, we take it, prepare it, wash it and send you the bill."),
        "hangItUpAndDontMeetTheRepresentativeYouDont":
            MessageLookupByLibrary.simpleMessage(
                "Hang it up and don\'t meet the representative. You don\'t need to be at home."),
        "hanged": MessageLookupByLibrary.simpleMessage("Hanged"),
        "high": MessageLookupByLibrary.simpleMessage("High"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "hour": m3,
        "howDoesItWork":
            MessageLookupByLibrary.simpleMessage("How does it work?"),
        "howWasYourExperienceWithUs": MessageLookupByLibrary.simpleMessage(
            "How was your experience with us?"),
        "iAgreeToThe": MessageLookupByLibrary.simpleMessage("I agree to the"),
        "iAgreeToTheTermsConditions": MessageLookupByLibrary.simpleMessage(
            "I agree to the <a>Terms & Conditions</a>"),
        "ifTheOptionIsActivatedTheLaundryWillUseTheAromaticScentIfRequired":
            MessageLookupByLibrary.simpleMessage(
                "If the option is activated, the laundry will use the aromatic scent if required."),
        "ifThisOptionIsActivated": MessageLookupByLibrary.simpleMessage(
            "If this option is activated, the laundry will use fabric softener if required"),
        "ifThisOptionIsEnabledTheLaundryWillUseFabricSoftenerIfRequired":
            MessageLookupByLibrary.simpleMessage(
                "If this option is enabled, the laundry will use fabric softener if required."),
        "invoiceNo": m4,
        "iron": MessageLookupByLibrary.simpleMessage("Iron"),
        "ironing": MessageLookupByLibrary.simpleMessage("Ironing"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "laundryAndIroning":
            MessageLookupByLibrary.simpleMessage("Laundry and Ironing"),
        "laundryClothesBlankets":
            MessageLookupByLibrary.simpleMessage("laundry/clothes/blankets"),
        "laundryExtras": MessageLookupByLibrary.simpleMessage("Laundry extras"),
        "limitedTimeOffer":
            MessageLookupByLibrary.simpleMessage("Limited Time Offer"),
        "little": MessageLookupByLibrary.simpleMessage("Little"),
        "located": MessageLookupByLibrary.simpleMessage("Located"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "loyaltyPoints": MessageLookupByLibrary.simpleMessage("loyalty points"),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "medium": MessageLookupByLibrary.simpleMessage("Medium"),
        "meter": m5,
        "minimumOrder": m6,
        "minimumOrderPrice":
            MessageLookupByLibrary.simpleMessage("Minimum order price"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nearbyWashers": MessageLookupByLibrary.simpleMessage("Nearby Washers"),
        "noAccount":
            MessageLookupByLibrary.simpleMessage("don\'t have an account"),
        "noGiftsAvailable":
            MessageLookupByLibrary.simpleMessage("No gifts available"),
        "noInternetWidget_checkConnection": MessageLookupByLibrary.simpleMessage(
            "Something is wrong with your connection. Please try again later."),
        "noInternetWidget_noInternetConnection":
            MessageLookupByLibrary.simpleMessage("No Internet Connection"),
        "noLoyaltyPointsAvailable":
            MessageLookupByLibrary.simpleMessage("No loyalty points available"),
        "noNotifications":
            MessageLookupByLibrary.simpleMessage("No notifications"),
        "noOrdersYet": MessageLookupByLibrary.simpleMessage("No orders yet"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "offerCode": MessageLookupByLibrary.simpleMessage("Offer code"),
        "onPressingContinueYouAgree": MessageLookupByLibrary.simpleMessage(
            "on pressing continue, you agree to"),
        "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
            "Browse your favorite products easily and quickly from your mobile!"),
        "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
            "Order at the click of a button and track your delivery status in real time"),
        "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
            "Take advantage of daily deals and exclusive discounts for you!"),
        "onlineOrder": MessageLookupByLibrary.simpleMessage("Online Order"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("order number"),
        "orderSchedule": MessageLookupByLibrary.simpleMessage("Order Schedule"),
        "orderStatus": MessageLookupByLibrary.simpleMessage("Order status"),
        "orderSummary": MessageLookupByLibrary.simpleMessage("Order Summary"),
        "orderValue": MessageLookupByLibrary.simpleMessage("Order value"),
        "order_cancelled":
            MessageLookupByLibrary.simpleMessage("Order cancelled"),
        "order_number": m7,
        "orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "otpSent": m8,
        "ourServices": MessageLookupByLibrary.simpleMessage("Our Services"),
        "packages": MessageLookupByLibrary.simpleMessage("Packages"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordConfirmation":
            MessageLookupByLibrary.simpleMessage("Password Confirmation"),
        "passwordsDoesntMatch":
            MessageLookupByLibrary.simpleMessage("Passwords doesn\'t match"),
        "pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "payInvoice": MessageLookupByLibrary.simpleMessage("Pay Invoice"),
        "payedInvoice": MessageLookupByLibrary.simpleMessage("Payed Invoice"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "paymentDetails":
            MessageLookupByLibrary.simpleMessage("Payment Details"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Payment Methods"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone Number"),
        "pleaseAcceptTheTermsAndConditions":
            MessageLookupByLibrary.simpleMessage(
                "Please accept the terms and conditions"),
        "pleaseConfirmYourPassword": MessageLookupByLibrary.simpleMessage(
            "Please confirm your password"),
        "pleaseEnterAValidEmail":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "pleaseEnterAValidEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid email address"),
        "pleaseEnterAValidPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid phone number"),
        "pleaseEnterYourEmail":
            MessageLookupByLibrary.simpleMessage("Please enter your email"),
        "pleaseEnterYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Please enter your email address"),
        "pleaseEnterYourFirstName": MessageLookupByLibrary.simpleMessage(
            "Please enter your first name"),
        "pleaseEnterYourLastName":
            MessageLookupByLibrary.simpleMessage("Please enter your last name"),
        "pleaseEnterYourMobileNumberToReceiveActivationCode":
            MessageLookupByLibrary.simpleMessage(
                "Please enter your mobile number to receive activation code"),
        "pleaseEnterYourName":
            MessageLookupByLibrary.simpleMessage("Please enter your name"),
        "pleaseEnterYourPassword":
            MessageLookupByLibrary.simpleMessage("Please enter your password"),
        "pleaseEnterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter your phone number"),
        "pleaseSelectTheWashType":
            MessageLookupByLibrary.simpleMessage("Please select the wash type"),
        "points": MessageLookupByLibrary.simpleMessage("Points"),
        "prepareYourOrder": MessageLookupByLibrary.simpleMessage(
            "Prepare your order and it will be delivered on time"),
        "prepareYourOrderAndItWillBeReceivedAtThe":
            MessageLookupByLibrary.simpleMessage(
                "Prepare your order and it will be received at the pre-specified time."),
        "previousOrders":
            MessageLookupByLibrary.simpleMessage("Previous Orders"),
        "price": MessageLookupByLibrary.simpleMessage("Price"),
        "priceMenu": MessageLookupByLibrary.simpleMessage("Price Menu"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "productDetails": m9,
        "quantityCount": MessageLookupByLibrary.simpleMessage("Quantity Count"),
        "recleanSmartBag":
            MessageLookupByLibrary.simpleMessage("Reclean Smart Bag"),
        "recleanSmartBagContent": MessageLookupByLibrary.simpleMessage(
            "Add the Recklin Smart Bag to your order, enjoy contactless delivery, get a very convenient laundry service with no hassle, no contact with the delivery person and no need to be in your apartment at the time of pickup and delivery."),
        "rectangular": MessageLookupByLibrary.simpleMessage("Rectangular"),
        "redeemPoints": MessageLookupByLibrary.simpleMessage("Redeem points"),
        "register_with_application":
            MessageLookupByLibrary.simpleMessage("Register with application"),
        "rememberMe": MessageLookupByLibrary.simpleMessage("Remember Me"),
        "reportAProblem":
            MessageLookupByLibrary.simpleMessage("Report a problem"),
        "representativeIsOnTheWay": MessageLookupByLibrary.simpleMessage(
            "The representative is on the way to pick up the order"),
        "requestAndSpecifyTheTypeOfWashingForEachBag":
            MessageLookupByLibrary.simpleMessage(
                "Request and specify the type of washing for each bag"),
        "requestSchedule":
            MessageLookupByLibrary.simpleMessage("Request Schedule"),
        "resendOtp": MessageLookupByLibrary.simpleMessage("Resend OTP"),
        "retailPrice": MessageLookupByLibrary.simpleMessage("Retail price"),
        "returnToHome": MessageLookupByLibrary.simpleMessage("Return to home"),
        "reviewOrder": MessageLookupByLibrary.simpleMessage("Review Order"),
        "rial": MessageLookupByLibrary.simpleMessage("Riyal"),
        "riyal": m10,
        "selectADeliveryTime":
            MessageLookupByLibrary.simpleMessage("Select a delivery time"),
        "selectAPickupTime":
            MessageLookupByLibrary.simpleMessage("Select a pickup time"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendActivationCode":
            MessageLookupByLibrary.simpleMessage("Send activation code"),
        "service": MessageLookupByLibrary.simpleMessage("Services"),
        "service1": MessageLookupByLibrary.simpleMessage("1-Service"),
        "service2": MessageLookupByLibrary.simpleMessage("2-Service"),
        "service3": MessageLookupByLibrary.simpleMessage("3-Service"),
        "serviceFee": MessageLookupByLibrary.simpleMessage("Service Fee"),
        "setANewPassword":
            MessageLookupByLibrary.simpleMessage("Set a new password"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showYourInvoice":
            MessageLookupByLibrary.simpleMessage("Show your invoice"),
        "signIn": MessageLookupByLibrary.simpleMessage("Login"),
        "sixAMToEightAM":
            MessageLookupByLibrary.simpleMessage("06:00 AM - 08:00 AM"),
        "sixPMToEightPM":
            MessageLookupByLibrary.simpleMessage("06:00 PM - 08:00 PM"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "squared": MessageLookupByLibrary.simpleMessage("Squared"),
        "starchLevel": MessageLookupByLibrary.simpleMessage("Starch level"),
        "step2": MessageLookupByLibrary.simpleMessage("Step 2"),
        "step3": MessageLookupByLibrary.simpleMessage("Step 3"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Sub Total"),
        "surName": MessageLookupByLibrary.simpleMessage("Sur Name"),
        "taxId": m11,
        "tenAMToTwelvePM":
            MessageLookupByLibrary.simpleMessage("10:00 AM - 12:00 PM"),
        "tenPMToTwelveAM":
            MessageLookupByLibrary.simpleMessage("10:00 PM - 12:00 AM"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "thankYouForYourTime":
            MessageLookupByLibrary.simpleMessage("Thank you for your time"),
        "theOrderWasDeliveredByTheCaptain":
            MessageLookupByLibrary.simpleMessage(
                "The order was delivered by the captain"),
        "theRepresentativeIsOnHisWayToReceiveYourOrder":
            MessageLookupByLibrary.simpleMessage(
                "The representative is on his way to receive your order."),
        "theTwoPartiesMeetToDeliverTheProduct":
            MessageLookupByLibrary.simpleMessage(
                "The two parties meet to deliver the product"),
        "timeAgo_day": m12,
        "timeAgo_hour": m13,
        "timeAgo_minute": m14,
        "timeAgo_second": m15,
        "toMyOrder": MessageLookupByLibrary.simpleMessage("To my order"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalAfterDiscount":
            MessageLookupByLibrary.simpleMessage("Total after discount"),
        "totalBeforeDiscount":
            MessageLookupByLibrary.simpleMessage("Total before discount"),
        "totalCost": MessageLookupByLibrary.simpleMessage("Total Cost"),
        "totalVat": MessageLookupByLibrary.simpleMessage("Total (VAT)"),
        "trackOrder": MessageLookupByLibrary.simpleMessage("Track order"),
        "twelveAMToTwoAM":
            MessageLookupByLibrary.simpleMessage("12:00 AM - 02:00 AM"),
        "twelvePMToTwoPM":
            MessageLookupByLibrary.simpleMessage("12:00 PM - 02:00 PM"),
        "twoAMToFourAM":
            MessageLookupByLibrary.simpleMessage("02:00 AM - 04:00 AM"),
        "twoPMToFourPM":
            MessageLookupByLibrary.simpleMessage("02:00 PM - 04:00 PM"),
        "typeOfIroning": MessageLookupByLibrary.simpleMessage(
            "Type of ironing Ghutra/Shamagh"),
        "update_available":
            MessageLookupByLibrary.simpleMessage("Update Available"),
        "update_availableBody": MessageLookupByLibrary.simpleMessage(
            "A new version is available. Update now for new features."),
        "update_required":
            MessageLookupByLibrary.simpleMessage("Update Required"),
        "update_requiredBody": MessageLookupByLibrary.simpleMessage(
            "A new version of the app is required to continue using it. Please update."),
        "useCode": MessageLookupByLibrary.simpleMessage("Use code"),
        "vat": m16,
        "vat15": MessageLookupByLibrary.simpleMessage("VAT(15%)"),
        "verifyAccount": MessageLookupByLibrary.simpleMessage("Verify Account"),
        "veryGood": MessageLookupByLibrary.simpleMessage("Very Good"),
        "viewYourReceipt":
            MessageLookupByLibrary.simpleMessage("View your receipt"),
        "wallet": MessageLookupByLibrary.simpleMessage("Wallet"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "washAndIron": MessageLookupByLibrary.simpleMessage("Wash and iron"),
        "weDeliverItAndHangItOnYourDoorWithout":
            MessageLookupByLibrary.simpleMessage(
                "We deliver it and hang it on your door without you being at home"),
        "weHaveBagsEachOneLabeledWithIroningIroningAnd":
            MessageLookupByLibrary.simpleMessage(
                "We have bags, each one labeled with ironing + ironing and washing + dry cleaning."),
        "wholesalePrice":
            MessageLookupByLibrary.simpleMessage("Wholesale price"),
        "whyTheSmartRecleanLaundryBag": MessageLookupByLibrary.simpleMessage(
            "Why the smart Reclean laundry bag?"),
        "win": MessageLookupByLibrary.simpleMessage("Win"),
        "withMarzam": MessageLookupByLibrary.simpleMessage("With Marzam"),
        "without": MessageLookupByLibrary.simpleMessage("Without"),
        "writeYourProblem":
            MessageLookupByLibrary.simpleMessage("Write your problem"),
        "youCanCancelTheOrder": MessageLookupByLibrary.simpleMessage(
            "You can cancel the order before the captain exits and receives the garment bag"),
        "youCanCancelTheOrderAtAnyTime": MessageLookupByLibrary.simpleMessage(
            "You can cancel the order before the end and receive the captain\'s bag of clothes"),
        "youCanPayNow": MessageLookupByLibrary.simpleMessage("You can pay now"),
        "youHavePoints": m17,
        "youHavePointsPoints": m18,
        "youHaveReceivedYourOrder": MessageLookupByLibrary.simpleMessage(
            "You have received your order"),
        "yourLaundryHasBeenStarted": MessageLookupByLibrary.simpleMessage(
            "Your laundry has been started, please pay your bill now to prepare your order for delivery"),
        "yourLocation": MessageLookupByLibrary.simpleMessage("Your location"),
        "yourOrderIsOnItsWay": MessageLookupByLibrary.simpleMessage(
            "Your order is on its way to the laundry and the tepidarium will be dispatched soon"),
        "yourOrderIsReadyForDelivery": MessageLookupByLibrary.simpleMessage(
            "Your order is ready for delivery"),
        "yourOrderWillBeDeliveredAtTheSpecifiedTime":
            MessageLookupByLibrary.simpleMessage(
                "Your order will be delivered at the specified time"),
        "yourPasswordMustBeAtLeast8Characters":
            MessageLookupByLibrary.simpleMessage(
                "Your password must be at least 8 characters")
      };
}
