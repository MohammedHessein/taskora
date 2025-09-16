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

  static String m6(orderNumber) => "Order No ${orderNumber}";

  static String m7(email) => "OTP sent to ${email}";

  static String m8(product) => "Product Details <a>(${product})</a>";

  static String m9(amount) => "${amount} Riyal";

  static String m10(id) => "Tax ID: ${id}";

  static String m11(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m12(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m14(count) =>
      "${Intl.plural(count, zero: 'just now', one: '1 second ago', other: '${count} seconds ago')}";

  static String m15(vat) => "vat (${vat})";

  static String m16(points) => "You have ${points} points";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "A_fee_of_SAR_will_be_deducted_from_your_card":
            MessageLookupByLibrary.simpleMessage(
                "A fee of SAR 3.67 will be deducted from your card to verify it. The amount will be refunded immediately."),
        "The_best_technician_in_your_area_has_been_found":
            MessageLookupByLibrary.simpleMessage(
                "The best technician in your area has been found."),
        "The_final_price_for_services_will_be_confirmed_after_the_visit_and_completion_of_the_inspection":
            MessageLookupByLibrary.simpleMessage(
                "The final price for services will be confirmed after the visit and completion of the inspection."),
        "Your_request_has_been_confirmed_and_we_are_searching_for_the_best_technician_in_your_area":
            MessageLookupByLibrary.simpleMessage(
                "Your request has been confirmed and we are searching for the best technician in your area."),
        "aboutProduct": m0,
        "aboutSupplier": MessageLookupByLibrary.simpleMessage("About Supplier"),
        "about_app": MessageLookupByLibrary.simpleMessage("About App"),
        "about_app_description": MessageLookupByLibrary.simpleMessage(
            "\"Taskora Provider\" is a comprehensive app that connects you with a wide range of professional home and technical service providers, all with ease and convenience. Whether you need a plumber, an appliance technician, an electronics expert, or any other service, the app offers a flexible and secure way to book the right service at your preferred time. Ragha Provider aims to simplify your daily life with its user-friendly interface, transparent provider ratings, and real-time order status updates."),
        "about_the_product":
            MessageLookupByLibrary.simpleMessage("About the Product"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "account_settings":
            MessageLookupByLibrary.simpleMessage("Account Settings"),
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "active_auctions":
            MessageLookupByLibrary.simpleMessage("Active Auctions"),
        "ad_address": MessageLookupByLibrary.simpleMessage("Ad Address"),
        "ad_description":
            MessageLookupByLibrary.simpleMessage("Ad Description"),
        "ad_details": MessageLookupByLibrary.simpleMessage("Ad Details"),
        "ad_image_conditions": MessageLookupByLibrary.simpleMessage(
            "Images must be in JPG or PNG format, with a resolution of at least 600 x 600 pixels, no larger than 5MB, no watermarks or logos, and a maximum of 10 images allowed."),
        "ad_images": MessageLookupByLibrary.simpleMessage("Ad Images"),
        "ad_more_attention": MessageLookupByLibrary.simpleMessage(
            "They demanded a distinctive advertisement compared to a simple advertisement."),
        "ad_number": MessageLookupByLibrary.simpleMessage("Ad Number"),
        "ad_purpose": MessageLookupByLibrary.simpleMessage("Ad Purpose"),
        "ad_title": MessageLookupByLibrary.simpleMessage("Ad Title"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addRecleanSmartBagToMyOrder": MessageLookupByLibrary.simpleMessage(
            "Add Reclean Smart Bag to my order"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Add to cart"),
        "add_ad": MessageLookupByLibrary.simpleMessage("Add Advertisement"),
        "add_auction": MessageLookupByLibrary.simpleMessage("Add Auction"),
        "add_coupon_code":
            MessageLookupByLibrary.simpleMessage("Add Coupon Code"),
        "add_video": MessageLookupByLibrary.simpleMessage("Add Video"),
        "additionalDetergents":
            MessageLookupByLibrary.simpleMessage("Additional detergents"),
        "additionalNotes":
            MessageLookupByLibrary.simpleMessage("Additional notes"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "advantages": MessageLookupByLibrary.simpleMessage("Advantages"),
        "advertisement": MessageLookupByLibrary.simpleMessage("Advertisement"),
        "advertisements":
            MessageLookupByLibrary.simpleMessage("Advertisements"),
        "agree": MessageLookupByLibrary.simpleMessage("Agree"),
        "agreeToTermsAndPolicies": MessageLookupByLibrary.simpleMessage(
            "By creating an account, you agree to all of our <a>Terms & Conditions</a> and <b>Privacy policies</b>"),
        "airConditioning":
            MessageLookupByLibrary.simpleMessage("Air conditioning"),
        "alerts": MessageLookupByLibrary.simpleMessage("Alerts"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "alreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "alreadyHaveAnAccountLogin": MessageLookupByLibrary.simpleMessage(
            "Already have an account? <a>Login</a>"),
        "amountWillBeCharged": m1,
        "amount_reserved":
            MessageLookupByLibrary.simpleMessage("Amount reserved via Xescrow"),
        "announced_limit":
            MessageLookupByLibrary.simpleMessage("Announced Limit"),
        "announced_limit_hint": MessageLookupByLibrary.simpleMessage(
            "Explanation: The advertiser has the option to specify the required limit. If the buyer wishes, he will press the “Buy Now” button in the auction without waiting for the end of the countdown and the deposit will be deducted from him directly."),
        "app_experience":
            MessageLookupByLibrary.simpleMessage("Overall App Experience"),
        "app_name": MessageLookupByLibrary.simpleMessage("Taskora - Ragwa"),
        "areYouSureYouWantToCloseTheApp": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to close the app?"),
        "areYouSureYouWantToContinueOrdering":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to continue ordering?"),
        "areYouSureYouWantToKeepOrdering": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to keep ordering?"),
        "aromaticScent": MessageLookupByLibrary.simpleMessage("Aromatic scent"),
        "auction": MessageLookupByLibrary.simpleMessage("Auction"),
        "auction_details":
            MessageLookupByLibrary.simpleMessage("Auction Details"),
        "auction_duration":
            MessageLookupByLibrary.simpleMessage("Auction Duration"),
        "auction_end_date":
            MessageLookupByLibrary.simpleMessage("Auction End Date"),
        "auction_end_time":
            MessageLookupByLibrary.simpleMessage("Auction End Time"),
        "auction_images":
            MessageLookupByLibrary.simpleMessage("Auction Images"),
        "auction_number":
            MessageLookupByLibrary.simpleMessage("Auction Number"),
        "auction_purpose":
            MessageLookupByLibrary.simpleMessage("Auction Purpose"),
        "auction_start_date":
            MessageLookupByLibrary.simpleMessage("Auction Start Date"),
        "auction_start_time":
            MessageLookupByLibrary.simpleMessage("Auction Start Time"),
        "auction_winner":
            MessageLookupByLibrary.simpleMessage("Auction Winner"),
        "auctions": MessageLookupByLibrary.simpleMessage("Auctions"),
        "auto_bid_increment":
            MessageLookupByLibrary.simpleMessage("Automatic Bid Increment"),
        "automaticPayment": MessageLookupByLibrary.simpleMessage(
            "Activate the automatic payment feature from the balance"),
        "available": MessageLookupByLibrary.simpleMessage("Available"),
        "bad": MessageLookupByLibrary.simpleMessage("Bad"),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "balanceAmount": MessageLookupByLibrary.simpleMessage("Balance amount"),
        "bank_details": MessageLookupByLibrary.simpleMessage("Bank Details"),
        "bid_increment":
            MessageLookupByLibrary.simpleMessage("Minimum Bid Increment"),
        "book": MessageLookupByLibrary.simpleMessage("Book"),
        "book_service": MessageLookupByLibrary.simpleMessage("Book Service"),
        "booking_details":
            MessageLookupByLibrary.simpleMessage("Booking Details"),
        "brand": MessageLookupByLibrary.simpleMessage("Brand"),
        "buy": MessageLookupByLibrary.simpleMessage("Buy"),
        "buy_now": MessageLookupByLibrary.simpleMessage("Buy Now"),
        "buyerInformation":
            MessageLookupByLibrary.simpleMessage("Buyer information"),
        "byClickingContinueYouAgreeToAtermsOfUseAnd":
            MessageLookupByLibrary.simpleMessage(
                "By clicking Continue, you agree to <a>Terms of Use and Policy</a>"),
        "byCreatingAnAccountYouAgreeToOurTermsConditions":
            MessageLookupByLibrary.simpleMessage(
                "By creating an account, you agree to our <a>Terms & Conditions</a> and <b>Privacy Policy</b>"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancel_ok": MessageLookupByLibrary.simpleMessage("Cancel / OK"),
        "cancel_order": MessageLookupByLibrary.simpleMessage("Cancel Order"),
        "car_type": MessageLookupByLibrary.simpleMessage("Car Type"),
        "card_number": MessageLookupByLibrary.simpleMessage("Card Number"),
        "cars": MessageLookupByLibrary.simpleMessage("Cars"),
        "cars_wash": MessageLookupByLibrary.simpleMessage("Cars Wash"),
        "cart": MessageLookupByLibrary.simpleMessage("Cart"),
        "cashOnDelivery":
            MessageLookupByLibrary.simpleMessage("Cash on Delivery"),
        "categories_carpentry":
            MessageLookupByLibrary.simpleMessage("Carpentry"),
        "categories_cleaning": MessageLookupByLibrary.simpleMessage("Cleaning"),
        "categories_home_appliances":
            MessageLookupByLibrary.simpleMessage("Home Appliances"),
        "categories_installation":
            MessageLookupByLibrary.simpleMessage("Installation"),
        "categories_laundry": MessageLookupByLibrary.simpleMessage("Laundry"),
        "categories_plumbing": MessageLookupByLibrary.simpleMessage("Plumbing"),
        "categories_security": MessageLookupByLibrary.simpleMessage("Security"),
        "categories_swimming_pool":
            MessageLookupByLibrary.simpleMessage("Swimming Pool"),
        "categories_tiling": MessageLookupByLibrary.simpleMessage("Tiling"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "change_language":
            MessageLookupByLibrary.simpleMessage("Change Language"),
        "chargeYourBalance":
            MessageLookupByLibrary.simpleMessage("charge your balance"),
        "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
        "choose_ad_category":
            MessageLookupByLibrary.simpleMessage("Select Ad Category"),
        "choose_category":
            MessageLookupByLibrary.simpleMessage("Choose Category"),
        "choose_package_discount": MessageLookupByLibrary.simpleMessage(
            "Choose the package that suits you and get up to 18% discount on all services"),
        "choose_payment_method":
            MessageLookupByLibrary.simpleMessage("Choose Payment Method"),
        "choose_service":
            MessageLookupByLibrary.simpleMessage("Choose Service"),
        "clothesAreNotConsideredForYou": MessageLookupByLibrary.simpleMessage(
            "Clothes are not considered for you"),
        "clothingArrangementMechanism": MessageLookupByLibrary.simpleMessage(
            "Clothing arrangement mechanism"),
        "come_back": MessageLookupByLibrary.simpleMessage("Come Back"),
        "comment": MessageLookupByLibrary.simpleMessage("Comment"),
        "commitment_to_deadlines":
            MessageLookupByLibrary.simpleMessage("Commitment to Deadlines"),
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
        "complete_booking":
            MessageLookupByLibrary.simpleMessage("Complete Booking"),
        "condition": MessageLookupByLibrary.simpleMessage("Condition"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmOrder": MessageLookupByLibrary.simpleMessage("Confirm Order"),
        "confirm_order": MessageLookupByLibrary.simpleMessage("Confirm Order"),
        "contact_the_advertiser":
            MessageLookupByLibrary.simpleMessage("Contact the Advertiser"),
        "contribute_to_the_development_of_our_services":
            MessageLookupByLibrary.simpleMessage(
                "Contribute to the development of our services"),
        "countdown_timer":
            MessageLookupByLibrary.simpleMessage("Auction Countdown"),
        "coupon_code": MessageLookupByLibrary.simpleMessage("Coupon Code"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Create new account"),
        "currentOrders": MessageLookupByLibrary.simpleMessage("Current orders"),
        "current_price": MessageLookupByLibrary.simpleMessage("Current Price"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
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
        "ease_of_communication":
            MessageLookupByLibrary.simpleMessage("Ease of Communication"),
        "ease_of_use":
            MessageLookupByLibrary.simpleMessage("Ease of Use & Communication"),
        "eightAMToTenAM":
            MessageLookupByLibrary.simpleMessage("08:00 AM - 10:00 AM"),
        "eightPMToTenPM":
            MessageLookupByLibrary.simpleMessage("08:00 PM - 10:00 PM"),
        "electrical_devices":
            MessageLookupByLibrary.simpleMessage("Electrical devices"),
        "electricity": MessageLookupByLibrary.simpleMessage("Electricity"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enable_location":
            MessageLookupByLibrary.simpleMessage("Enable Location"),
        "end_date": MessageLookupByLibrary.simpleMessage("End Date"),
        "end_time": MessageLookupByLibrary.simpleMessage("End Time"),
        "ended": MessageLookupByLibrary.simpleMessage("Ended"),
        "ended_auctions":
            MessageLookupByLibrary.simpleMessage("Ended Auctions"),
        "enterConfirmationCode":
            MessageLookupByLibrary.simpleMessage("Enter Confirmation Code"),
        "enterTheShippingBalanceAmount": MessageLookupByLibrary.simpleMessage(
            "Enter the shipping balance amount"),
        "enter_mobile": MessageLookupByLibrary.simpleMessage(
            "Enter your mobile number to receive activation code"),
        "enter_otp": MessageLookupByLibrary.simpleMessage("Enter OTP Code"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
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
        "expiry_date": MessageLookupByLibrary.simpleMessage("Expiry Card Date"),
        "fabricSoftener":
            MessageLookupByLibrary.simpleMessage("Fabric softener"),
        "failed_to_select_location":
            MessageLookupByLibrary.simpleMessage("Failed to select location"),
        "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
        "featured_ad":
            MessageLookupByLibrary.simpleMessage("Featured Advertisement"),
        "featured_ad_date": MessageLookupByLibrary.simpleMessage("20-7-2025"),
        "featured_ad_description":
            MessageLookupByLibrary.simpleMessage("The latest design for 2025"),
        "featured_ad_price_after_discount":
            MessageLookupByLibrary.simpleMessage("200 r.s"),
        "featured_ad_price_before_discount":
            MessageLookupByLibrary.simpleMessage("400 r.s"),
        "featured_ad_title":
            MessageLookupByLibrary.simpleMessage("Laundry 1500W"),
        "featured_ads_remaining":
            MessageLookupByLibrary.simpleMessage("Featured ads remaining:1"),
        "feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "finalizePayment":
            MessageLookupByLibrary.simpleMessage("Finalize Payment"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "first_step": MessageLookupByLibrary.simpleMessage("First Step"),
        "fixed_price_services":
            MessageLookupByLibrary.simpleMessage("Fixed Price Services"),
        "folded": MessageLookupByLibrary.simpleMessage("Folded"),
        "follow_auction":
            MessageLookupByLibrary.simpleMessage("Follow Auction"),
        "follow_up_on_the_order":
            MessageLookupByLibrary.simpleMessage("Follow up on the order"),
        "for_service_product":
            MessageLookupByLibrary.simpleMessage("(For Service Product)"),
        "forgetPass": MessageLookupByLibrary.simpleMessage("Forget Pass"),
        "fourAMToSixAM":
            MessageLookupByLibrary.simpleMessage("04:00 AM - 06:00 AM"),
        "fourPMToSixPM":
            MessageLookupByLibrary.simpleMessage("04:00 PM - 06:00 PM"),
        "free_delivery": MessageLookupByLibrary.simpleMessage("Free Delivery"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "full_name": MessageLookupByLibrary.simpleMessage("Full Name"),
        "furniture_equipment":
            MessageLookupByLibrary.simpleMessage("Furniture equipment"),
        "general_error": m2,
        "general_noImageAvailable":
            MessageLookupByLibrary.simpleMessage("No image available"),
        "gift_details": MessageLookupByLibrary.simpleMessage("Gift Details"),
        "gift_value": MessageLookupByLibrary.simpleMessage("Gift Value"),
        "good": MessageLookupByLibrary.simpleMessage("Good"),
        "grandTotal": MessageLookupByLibrary.simpleMessage("Grand Total"),
        "grid": MessageLookupByLibrary.simpleMessage("Grid"),
        "hangItOnTheDoorWeTakeItPrepareIt": MessageLookupByLibrary.simpleMessage(
            "Hang it on the door, we take it, prepare it, wash it and send you the bill."),
        "hangItUpAndDontMeetTheRepresentativeYouDont":
            MessageLookupByLibrary.simpleMessage(
                "Hang it up and don\'t meet the representative. You don\'t need to be at home."),
        "hanged": MessageLookupByLibrary.simpleMessage("Hanged"),
        "help_us_develop_our_services": MessageLookupByLibrary.simpleMessage(
            "Help us develop our services"),
        "here_are_placed_the_advantages_of_the_pre_selected_product_towards_the_customer":
            MessageLookupByLibrary.simpleMessage(
                "Here are placed the advantages of the pre-selected product towards the customer."),
        "high": MessageLookupByLibrary.simpleMessage("High"),
        "highest_bidder":
            MessageLookupByLibrary.simpleMessage("Highest Bidder"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "hour": m3,
        "household_tools":
            MessageLookupByLibrary.simpleMessage("Household tools"),
        "howDoesItWork":
            MessageLookupByLibrary.simpleMessage("How does it work?"),
        "howWasYourExperienceWithUs": MessageLookupByLibrary.simpleMessage(
            "How was your experience with us?"),
        "how_to_benefit_from_offers": MessageLookupByLibrary.simpleMessage(
            "How can I benefit from the offers?"),
        "iAgreeToThe": MessageLookupByLibrary.simpleMessage("I agree to the"),
        "iAgreeToTheTermsConditions": MessageLookupByLibrary.simpleMessage(
            "I agree to the <a>Terms & Conditions</a>"),
        "i_agree_on": MessageLookupByLibrary.simpleMessage("I agree on"),
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
        "it_is_2_5_km2_away_from_your_location":
            MessageLookupByLibrary.simpleMessage(
                "It is 2.5 km2 away from your location"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "laundryAndIroning":
            MessageLookupByLibrary.simpleMessage("Laundry and Ironing"),
        "laundryClothesBlankets":
            MessageLookupByLibrary.simpleMessage("laundry/clothes/blankets"),
        "laundryExtras": MessageLookupByLibrary.simpleMessage("Laundry extras"),
        "leave_your_message":
            MessageLookupByLibrary.simpleMessage("Leave your message"),
        "limitedTimeOffer":
            MessageLookupByLibrary.simpleMessage("Limited Time Offer"),
        "list": MessageLookupByLibrary.simpleMessage("List"),
        "little": MessageLookupByLibrary.simpleMessage("Little"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading"),
        "located": MessageLookupByLibrary.simpleMessage("Located"),
        "location_and_facilities":
            MessageLookupByLibrary.simpleMessage("Location & Facilities"),
        "location_and_public_facilities": MessageLookupByLibrary.simpleMessage(
            "Location and public facilities"),
        "location_ex": MessageLookupByLibrary.simpleMessage(
            "Al Yarmouk District, Riyadh, Kingdom of Saudi Arabia"),
        "location_example": MessageLookupByLibrary.simpleMessage(
            "5869 Abi Maali Al-Naqqash Street, Al-Ulaya District, Riyadh, Kingdom of Saudi Arabia"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "loyaltyPoints": MessageLookupByLibrary.simpleMessage("loyalty points"),
        "make_featured_ad":
            MessageLookupByLibrary.simpleMessage("Make it a featured ad"),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "medium": MessageLookupByLibrary.simpleMessage("Medium"),
        "meeting_delivery": MessageLookupByLibrary.simpleMessage(
            "Meeting takes place between both parties to deliver the product"),
        "merchant_rating":
            MessageLookupByLibrary.simpleMessage("Merchant Rating"),
        "meter": m5,
        "minimumOrderPrice":
            MessageLookupByLibrary.simpleMessage("Minimum order price"),
        "mobile": MessageLookupByLibrary.simpleMessage("Mobile"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nearbyWashers": MessageLookupByLibrary.simpleMessage("Nearby Washers"),
        "newItem": MessageLookupByLibrary.simpleMessage("New"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
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
        "offer_description": MessageLookupByLibrary.simpleMessage(
            "Enjoy a 50% discount on all services for only 24 hours!"),
        "offer_title": MessageLookupByLibrary.simpleMessage(
            "Exclusive for Taskora customers"),
        "offers": MessageLookupByLibrary.simpleMessage("Offers"),
        "onPressingContinueYouAgree": MessageLookupByLibrary.simpleMessage(
            "on pressing continue, you agree to"),
        "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
            "Browse your favorite products easily and quickly from your mobile!"),
        "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
            "Order at the click of a button and track your delivery status in real time"),
        "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
            "Take advantage of daily deals and exclusive discounts for you!"),
        "onlineOrder": MessageLookupByLibrary.simpleMessage("Online Order"),
        "operation_done_successfully":
            MessageLookupByLibrary.simpleMessage("Operation Done Successfully"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("order number"),
        "orderSchedule": MessageLookupByLibrary.simpleMessage("Order Schedule"),
        "orderStatus": MessageLookupByLibrary.simpleMessage("Order status"),
        "orderSummary": MessageLookupByLibrary.simpleMessage("Order Summary"),
        "orderValue": MessageLookupByLibrary.simpleMessage("Order value"),
        "order_cancelled":
            MessageLookupByLibrary.simpleMessage("Order cancelled"),
        "order_details": MessageLookupByLibrary.simpleMessage("Order Details"),
        "order_number": m6,
        "orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "otpSent": m7,
        "otp_sent_to": MessageLookupByLibrary.simpleMessage("OTP code sent to"),
        "ourServices": MessageLookupByLibrary.simpleMessage("Our Services"),
        "overall_experience":
            MessageLookupByLibrary.simpleMessage("Overall Experience"),
        "packages": MessageLookupByLibrary.simpleMessage("Packages"),
        "paints": MessageLookupByLibrary.simpleMessage("Paints"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordConfirmation":
            MessageLookupByLibrary.simpleMessage("Password Confirmation"),
        "passwordsDoesntMatch":
            MessageLookupByLibrary.simpleMessage("Passwords doesn\'t match"),
        "pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "payInvoice": MessageLookupByLibrary.simpleMessage("Pay Invoice"),
        "pay_less_earn_more":
            MessageLookupByLibrary.simpleMessage("Pay less & earn more"),
        "payedInvoice": MessageLookupByLibrary.simpleMessage("Payed Invoice"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "paymentDetails":
            MessageLookupByLibrary.simpleMessage("Payment Details"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Payment Methods"),
        "payment_details":
            MessageLookupByLibrary.simpleMessage("Payment Details"),
        "payment_method":
            MessageLookupByLibrary.simpleMessage("Payment Method"),
        "pending": MessageLookupByLibrary.simpleMessage("Pending"),
        "personal_details":
            MessageLookupByLibrary.simpleMessage("Personal Details"),
        "personal_info":
            MessageLookupByLibrary.simpleMessage("Personal Information"),
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
        "price_after_inspection":
            MessageLookupByLibrary.simpleMessage("Price after inspection"),
        "price_quality_ratio":
            MessageLookupByLibrary.simpleMessage("Price-Quality Ratio"),
        "price_vs_quality":
            MessageLookupByLibrary.simpleMessage("Price vs Quality"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "privacy_policy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "privacy_policy_description": MessageLookupByLibrary.simpleMessage(
            "At Taskura Provider, we respect your privacy and are committed to protecting your personal data. We only collect the information necessary to provide and improve our service, such as your name, phone number, and location. Your information will not be shared with any third parties outside of the service provision context, and it is stored using advanced security systems. By using the application, you agree to this privacy policy, and we will notify you of any future changes to this policy."),
        "productDetails": m8,
        "product_address":
            MessageLookupByLibrary.simpleMessage("Product Address"),
        "product_description":
            MessageLookupByLibrary.simpleMessage("Product Description"),
        "product_details":
            MessageLookupByLibrary.simpleMessage("Product Details"),
        "product_rating":
            MessageLookupByLibrary.simpleMessage("Product Rating"),
        "product_specifications":
            MessageLookupByLibrary.simpleMessage("Product Specifications"),
        "publish": MessageLookupByLibrary.simpleMessage("Publish"),
        "punctuality": MessageLookupByLibrary.simpleMessage("Punctuality"),
        "purpose_buy": MessageLookupByLibrary.simpleMessage("Buy"),
        "purpose_charity": MessageLookupByLibrary.simpleMessage("Charity"),
        "purpose_exchange": MessageLookupByLibrary.simpleMessage("Exchange"),
        "purpose_lost_found":
            MessageLookupByLibrary.simpleMessage("Lost & Found"),
        "purpose_rent": MessageLookupByLibrary.simpleMessage("Rent"),
        "purpose_sale": MessageLookupByLibrary.simpleMessage("Sale"),
        "quantityCount": MessageLookupByLibrary.simpleMessage("Quantity Count"),
        "raghwa_gifts": MessageLookupByLibrary.simpleMessage("Raghwa Gifts"),
        "rate_service": MessageLookupByLibrary.simpleMessage("Rate Service"),
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
        "request_number":
            MessageLookupByLibrary.simpleMessage("Request Number"),
        "requests": MessageLookupByLibrary.simpleMessage("Requests"),
        "resend": MessageLookupByLibrary.simpleMessage("Resend?"),
        "resendAgain": MessageLookupByLibrary.simpleMessage("Resend again?"),
        "resendOtp": MessageLookupByLibrary.simpleMessage("Resend OTP"),
        "reserve_price": MessageLookupByLibrary.simpleMessage("Reserve Price"),
        "retailPrice": MessageLookupByLibrary.simpleMessage("Retail price"),
        "returnToHome": MessageLookupByLibrary.simpleMessage("Return to home"),
        "review": MessageLookupByLibrary.simpleMessage("Review"),
        "reviewOrder": MessageLookupByLibrary.simpleMessage("Review Order"),
        "review_data": MessageLookupByLibrary.simpleMessage("Review Data"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "rial": MessageLookupByLibrary.simpleMessage("Riyal"),
        "riyal": m9,
        "satellite": MessageLookupByLibrary.simpleMessage("Satellite"),
        "schedule_order":
            MessageLookupByLibrary.simpleMessage("Schedule Order"),
        "search": MessageLookupByLibrary.simpleMessage("Search..."),
        "search_location": MessageLookupByLibrary.simpleMessage("Search"),
        "searching_technician":
            MessageLookupByLibrary.simpleMessage("Searching for Technician"),
        "second_step": MessageLookupByLibrary.simpleMessage("Second Step"),
        "secret_limit": MessageLookupByLibrary.simpleMessage("Secret Limit"),
        "secure_payment":
            MessageLookupByLibrary.simpleMessage("Secure Payment"),
        "selectADeliveryTime":
            MessageLookupByLibrary.simpleMessage("Select a delivery time"),
        "selectAPickupTime":
            MessageLookupByLibrary.simpleMessage("Select a pickup time"),
        "select_location":
            MessageLookupByLibrary.simpleMessage("Select Location"),
        "select_price_type":
            MessageLookupByLibrary.simpleMessage("Select Price Type"),
        "select_service":
            MessageLookupByLibrary.simpleMessage("Select Service"),
        "seller_rating": MessageLookupByLibrary.simpleMessage("Seller Rating"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendActivationCode":
            MessageLookupByLibrary.simpleMessage("Send activation code"),
        "send_gift": MessageLookupByLibrary.simpleMessage("Send Gift"),
        "send_message":
            MessageLookupByLibrary.simpleMessage("Leave your message"),
        "service": MessageLookupByLibrary.simpleMessage("Services"),
        "service1": MessageLookupByLibrary.simpleMessage("1-Service"),
        "service2": MessageLookupByLibrary.simpleMessage("2-Service"),
        "service3": MessageLookupByLibrary.simpleMessage("3-Service"),
        "serviceFee": MessageLookupByLibrary.simpleMessage("Service Fee"),
        "service_completed": MessageLookupByLibrary.simpleMessage(
            "Service Completed Successfully"),
        "service_details":
            MessageLookupByLibrary.simpleMessage("Service Details"),
        "service_fee": MessageLookupByLibrary.simpleMessage("Service Fee"),
        "service_is_done":
            MessageLookupByLibrary.simpleMessage("Service is done"),
        "service_quality":
            MessageLookupByLibrary.simpleMessage("Service Quality"),
        "service_review":
            MessageLookupByLibrary.simpleMessage("Service Review"),
        "services": MessageLookupByLibrary.simpleMessage("Services"),
        "services_need_inspection": MessageLookupByLibrary.simpleMessage(
            "Services need technician inspection"),
        "services_subtitle": MessageLookupByLibrary.simpleMessage(
            "We\'ve gathered all the services your home needs"),
        "services_title":
            MessageLookupByLibrary.simpleMessage("Technical services"),
        "setANewPassword":
            MessageLookupByLibrary.simpleMessage("Set a new password"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showYourInvoice":
            MessageLookupByLibrary.simpleMessage("Show your invoice"),
        "show_all": MessageLookupByLibrary.simpleMessage("Show All"),
        "signIn": MessageLookupByLibrary.simpleMessage("Login"),
        "sixAMToEightAM":
            MessageLookupByLibrary.simpleMessage("06:00 AM - 08:00 AM"),
        "sixPMToEightPM":
            MessageLookupByLibrary.simpleMessage("06:00 PM - 08:00 PM"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "speaks_automatically":
            MessageLookupByLibrary.simpleMessage("Speaks Automatically"),
        "squared": MessageLookupByLibrary.simpleMessage("Squared"),
        "starchLevel": MessageLookupByLibrary.simpleMessage("Starch level"),
        "start_date": MessageLookupByLibrary.simpleMessage("Start Date"),
        "start_price": MessageLookupByLibrary.simpleMessage("Start Price"),
        "start_time": MessageLookupByLibrary.simpleMessage("Start Time"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "status_new": MessageLookupByLibrary.simpleMessage("New"),
        "stc_pay": MessageLookupByLibrary.simpleMessage("STC Pay"),
        "step2": MessageLookupByLibrary.simpleMessage("Step 2"),
        "step3": MessageLookupByLibrary.simpleMessage("Step 3"),
        "store": MessageLookupByLibrary.simpleMessage("Store"),
        "store_item_date": MessageLookupByLibrary.simpleMessage("20-7-2025"),
        "store_item_description":
            MessageLookupByLibrary.simpleMessage("The latest design for 2025"),
        "store_item_price_after_discount":
            MessageLookupByLibrary.simpleMessage("200 r.s"),
        "store_item_price_before_discount":
            MessageLookupByLibrary.simpleMessage("400 r.s"),
        "store_item_title":
            MessageLookupByLibrary.simpleMessage("Laundry 1500W"),
        "subject": MessageLookupByLibrary.simpleMessage("Subject"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "subscribe": MessageLookupByLibrary.simpleMessage("Subscribe"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Sub Total"),
        "surName": MessageLookupByLibrary.simpleMessage("Sur Name"),
        "tabsAcCentral": MessageLookupByLibrary.simpleMessage("Central AC"),
        "tabsAcOther": MessageLookupByLibrary.simpleMessage("Other"),
        "tabsAcSplit": MessageLookupByLibrary.simpleMessage("Split AC"),
        "tabsAcWindow": MessageLookupByLibrary.simpleMessage("Window AC"),
        "tabsCarsWashingMain": MessageLookupByLibrary.simpleMessage("Main"),
        "tabsCarsWashingOther": MessageLookupByLibrary.simpleMessage("Other"),
        "tabsElectricityInstallation":
            MessageLookupByLibrary.simpleMessage("Installation & Setup"),
        "tabsElectricityMain":
            MessageLookupByLibrary.simpleMessage("Main Services"),
        "tabsElectricityOther": MessageLookupByLibrary.simpleMessage("Other"),
        "tabsPlumbingInstallation":
            MessageLookupByLibrary.simpleMessage("Installation"),
        "tabsPlumbingOther": MessageLookupByLibrary.simpleMessage("Other"),
        "tabsPlumpingChangeImpactEstablishment":
            MessageLookupByLibrary.simpleMessage(
                "Change,Impact & Establishment"),
        "tabsSatelliteInstallation":
            MessageLookupByLibrary.simpleMessage("Installation"),
        "tabsSatelliteOther": MessageLookupByLibrary.simpleMessage("Other"),
        "tabsSatelliteProgramming":
            MessageLookupByLibrary.simpleMessage("Programming"),
        "tabs_home": MessageLookupByLibrary.simpleMessage("Home"),
        "tabs_offers": MessageLookupByLibrary.simpleMessage("Offers"),
        "tabs_orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "tabs_settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "tabs_store": MessageLookupByLibrary.simpleMessage("Store"),
        "taskora_gifts": MessageLookupByLibrary.simpleMessage("Taskora Gifts"),
        "taskora_offers":
            MessageLookupByLibrary.simpleMessage("Taskora Offers"),
        "taxId": m10,
        "technical_support":
            MessageLookupByLibrary.simpleMessage("Technical Support"),
        "technical_support_address": MessageLookupByLibrary.simpleMessage(
            "Riyadh - Al Malaz - 12845 - Salahuddin Road"),
        "technical_support_contact":
            MessageLookupByLibrary.simpleMessage("+966 55 768 6624"),
        "technician_on_way":
            MessageLookupByLibrary.simpleMessage("Technician on the way"),
        "tenAMToTwelvePM":
            MessageLookupByLibrary.simpleMessage("10:00 AM - 12:00 PM"),
        "tenPMToTwelveAM":
            MessageLookupByLibrary.simpleMessage("10:00 PM - 12:00 AM"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "terms_and_conditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "terms_of_use": MessageLookupByLibrary.simpleMessage("Terms of Use"),
        "thankYouForYourTime":
            MessageLookupByLibrary.simpleMessage("Thank you for your time"),
        "thank_you_for_using_our_service": MessageLookupByLibrary.simpleMessage(
            "Thank you for using our service"),
        "thank_you_for_your_time":
            MessageLookupByLibrary.simpleMessage("Thank you for your time"),
        "thanks_for_time":
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
        "third_step": MessageLookupByLibrary.simpleMessage("Third Step"),
        "timeAgo_day": m11,
        "timeAgo_hour": m12,
        "timeAgo_minute": m13,
        "timeAgo_second": m14,
        "toMyOrder": MessageLookupByLibrary.simpleMessage("To my order"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalAfterDiscount":
            MessageLookupByLibrary.simpleMessage("Total after discount"),
        "totalBeforeDiscount":
            MessageLookupByLibrary.simpleMessage("Total before discount"),
        "totalCost": MessageLookupByLibrary.simpleMessage("Total Cost"),
        "totalVat": MessageLookupByLibrary.simpleMessage("Total (VAT)"),
        "total_price": MessageLookupByLibrary.simpleMessage("Total Price"),
        "total_service_cost":
            MessageLookupByLibrary.simpleMessage("Total Service Cost"),
        "total_service_cost_with_vat": MessageLookupByLibrary.simpleMessage(
            "Total Service Cost (with VAT)"),
        "total_vat": MessageLookupByLibrary.simpleMessage("Total (incl. VAT)"),
        "trackOrder": MessageLookupByLibrary.simpleMessage("Track order"),
        "track_order": MessageLookupByLibrary.simpleMessage("Track Order"),
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
        "unavailable": MessageLookupByLibrary.simpleMessage("Unavailable"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "up_for_auction":
            MessageLookupByLibrary.simpleMessage("Up for Auction"),
        "update_available":
            MessageLookupByLibrary.simpleMessage("Update Available"),
        "update_availableBody": MessageLookupByLibrary.simpleMessage(
            "A new version is available. Update now for new features."),
        "update_required":
            MessageLookupByLibrary.simpleMessage("Update Required"),
        "update_requiredBody": MessageLookupByLibrary.simpleMessage(
            "A new version of the app is required to continue using it. Please update."),
        "updates": MessageLookupByLibrary.simpleMessage("Updates"),
        "useCode": MessageLookupByLibrary.simpleMessage("Use code"),
        "used": MessageLookupByLibrary.simpleMessage("Used"),
        "vat": m15,
        "vat15": MessageLookupByLibrary.simpleMessage("VAT(15%)"),
        "verifyAccount": MessageLookupByLibrary.simpleMessage("Verify Account"),
        "veryGood": MessageLookupByLibrary.simpleMessage("Very Good"),
        "viewYourReceipt":
            MessageLookupByLibrary.simpleMessage("View your receipt"),
        "view_all": MessageLookupByLibrary.simpleMessage("View All"),
        "waiting_for_price": MessageLookupByLibrary.simpleMessage(
            "Waiting for price confirmation"),
        "waiting_for_technician":
            MessageLookupByLibrary.simpleMessage("Waiting for The Technician"),
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
        "youHavePoints": m16,
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
