// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(product) => "عن المنتج <a>(${product})</a>";

  static String m1(amount) =>
      "سيتم خصم مبلغ قدره ${amount} ريال سعودي للتحقق من بطاقتك. سيتم استرداد المبلغ فورًا";

  static String m2(errCode) => "خطأ: ${errCode}";

  static String m3(date) => "${date} ساعة";

  static String m4(invoiceNo) => "الفاتورة رقم #${invoiceNo}";

  static String m5(meter) => "${meter} متر";

  static String m6(orderNumber) => "رقم الطلب ${orderNumber}";

  static String m7(email) => "تم إرسال رمز التحقق إلى ${email}";

  static String m8(product) => "تفاصيل المنتج <a>(${product})</a>";

  static String m9(amount) => "${amount} ريال";

  static String m10(id) => "الرقم الضريبي: ${id}";

  static String m11(count) =>
      "${Intl.plural(count, one: 'منذ يوم واحد', other: 'منذ ${count} أيام')}";

  static String m12(count) =>
      "${Intl.plural(count, one: 'منذ ساعة واحدة', other: 'منذ ${count} ساعات')}";

  static String m13(count) =>
      "${Intl.plural(count, one: 'منذ دقيقة واحدة', other: 'منذ ${count} دقائق')}";

  static String m14(count) =>
      "${Intl.plural(count, zero: 'الآن', one: 'منذ ثانية واحدة', other: 'منذ ${count} ثوانٍ')}";

  static String m15(vat) => "القيمة المضافة (${vat})";

  static String m16(points) => "لديك ${points} نقطة";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutProduct": m0,
    "aboutSupplier": MessageLookupByLibrary.simpleMessage("حول المورد"),
    "about_app": MessageLookupByLibrary.simpleMessage("عن التطبيق"),
    "about_app_description": MessageLookupByLibrary.simpleMessage(
      "رغوة بروفايد هو تطبيق شامل يربطك بمجموعة واسعة من مزودي الخدمات المنزلية والفنية بكل سهولة واحترافية.",
    ),
    "account": MessageLookupByLibrary.simpleMessage("الحساب"),
    "account_settings": MessageLookupByLibrary.simpleMessage("إعدادات الحساب"),
    "active": MessageLookupByLibrary.simpleMessage("نشط"),
    "active_auctions": MessageLookupByLibrary.simpleMessage("المزادات النشطة"),
    "ad_description": MessageLookupByLibrary.simpleMessage("وصف الاعلان"),
    "ad_title": MessageLookupByLibrary.simpleMessage("عنوان الاعلان"),
    "add": MessageLookupByLibrary.simpleMessage("اضف"),
    "addRecleanSmartBagToMyOrder": MessageLookupByLibrary.simpleMessage(
      "إضافة شنطة ريكلين الذكية إلى طلبي",
    ),
    "addToCart": MessageLookupByLibrary.simpleMessage("أضف إلى السلة"),
    "add_ad": MessageLookupByLibrary.simpleMessage("اضافة اعلان"),
    "additionalDetergents": MessageLookupByLibrary.simpleMessage(
      "منظفات إضافية",
    ),
    "additionalNotes": MessageLookupByLibrary.simpleMessage("ملاحظات إضافية"),
    "address": MessageLookupByLibrary.simpleMessage("العنوان"),
    "advantages": MessageLookupByLibrary.simpleMessage("المميزات"),
    "agreeToTermsAndPolicies": MessageLookupByLibrary.simpleMessage(
      "بإنشائك حسابًا، فإنك توافق على جميع <a>الشروط والأحكام</a> و<b>سياسات الخصوصية</b> الخاصة بنا",
    ),
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "لديك حساب بالفعل",
    ),
    "alreadyHaveAnAccountLogin": MessageLookupByLibrary.simpleMessage(
      "هل لديك حساب بالفعل؟ <a>تسجيل الدخول</a>",
    ),
    "amountWillBeCharged": m1,
    "app_experience": MessageLookupByLibrary.simpleMessage(
      "التجربة العامة للتطبيق",
    ),
    "app_name": MessageLookupByLibrary.simpleMessage("تاسكورا - رغوة"),
    "areYouSureYouWantToCloseTheApp": MessageLookupByLibrary.simpleMessage(
      "هل انت متاكد انك تريد اغلاق التطبيق؟",
    ),
    "areYouSureYouWantToContinueOrdering": MessageLookupByLibrary.simpleMessage(
      "متأكد في استمرار الطلب؟",
    ),
    "areYouSureYouWantToKeepOrdering": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد أنك تريد الاستمرار في الطلب؟",
    ),
    "aromaticScent": MessageLookupByLibrary.simpleMessage("رائحة عطرية"),
    "auction_details": MessageLookupByLibrary.simpleMessage("تفاصيل المزاد"),
    "auction_duration": MessageLookupByLibrary.simpleMessage("مدة المزاد"),
    "auctions": MessageLookupByLibrary.simpleMessage("المزادات"),
    "automaticPayment": MessageLookupByLibrary.simpleMessage(
      "تفعيل خاصية الدفع الاوتوماتيكي من الرصيد",
    ),
    "bad": MessageLookupByLibrary.simpleMessage("سيئة"),
    "balance": MessageLookupByLibrary.simpleMessage("الرصيد"),
    "balanceAmount": MessageLookupByLibrary.simpleMessage("مبلغ الرصيد"),
    "bank_details": MessageLookupByLibrary.simpleMessage("البيانات البنكية"),
    "bid_increment": MessageLookupByLibrary.simpleMessage(
      "السعر الأدنى للزيادة",
    ),
    "book_service": MessageLookupByLibrary.simpleMessage("حجز الخدمة"),
    "buyerInformation": MessageLookupByLibrary.simpleMessage("معلومات المشتري"),
    "byClickingContinueYouAgreeToAtermsOfUseAnd":
        MessageLookupByLibrary.simpleMessage(
          "بالنقر على متابعة، فإنك توافق على <a>شروط الاستخدام والسياسة</a>",
        ),
    "byCreatingAnAccountYouAgreeToOurTermsConditions":
        MessageLookupByLibrary.simpleMessage(
          "بإنشائك حسابًا، فإنك توافق على <a>الشروط والأحكام</a> و<b>سياسة الخصوصية</b> الخاصة بنا",
        ),
    "cancel": MessageLookupByLibrary.simpleMessage("الغاء"),
    "card_number": MessageLookupByLibrary.simpleMessage("رقم البطاقة البنكية"),
    "cart": MessageLookupByLibrary.simpleMessage("السلة"),
    "cashOnDelivery": MessageLookupByLibrary.simpleMessage(
      "الدفع عند الاستلام",
    ),
    "categories_carpentry": MessageLookupByLibrary.simpleMessage("نجارة"),
    "categories_cleaning": MessageLookupByLibrary.simpleMessage("تنظيف"),
    "categories_home_appliances": MessageLookupByLibrary.simpleMessage(
      "أجهزة منزلية",
    ),
    "categories_installation": MessageLookupByLibrary.simpleMessage("تركيب"),
    "categories_laundry": MessageLookupByLibrary.simpleMessage("Laundry"),
    "categories_plumbing": MessageLookupByLibrary.simpleMessage("سباكة"),
    "categories_security": MessageLookupByLibrary.simpleMessage("أمن وسلامة"),
    "categories_swimming_pool": MessageLookupByLibrary.simpleMessage("سباحة"),
    "categories_tiling": MessageLookupByLibrary.simpleMessage("تبليط"),
    "changePassword": MessageLookupByLibrary.simpleMessage("تغيير كلمة المرور"),
    "chargeYourBalance": MessageLookupByLibrary.simpleMessage("اشحن رصيدك"),
    "checkout": MessageLookupByLibrary.simpleMessage("الدفع"),
    "clothesAreNotConsideredForYou": MessageLookupByLibrary.simpleMessage(
      "لا تعد الملابس نحسبها عنك",
    ),
    "clothingArrangementMechanism": MessageLookupByLibrary.simpleMessage(
      "آلية ترتيب الملابس",
    ),
    "comment": MessageLookupByLibrary.simpleMessage("تعليق"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "common_confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "common_error": MessageLookupByLibrary.simpleMessage("خطأ"),
    "common_next": MessageLookupByLibrary.simpleMessage("التالى"),
    "common_no": MessageLookupByLibrary.simpleMessage("لا"),
    "common_ok": MessageLookupByLibrary.simpleMessage("حسنًا"),
    "common_somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. يرجى إعادة تشغيل التطبيق.",
    ),
    "common_success": MessageLookupByLibrary.simpleMessage("نجاح"),
    "common_yes": MessageLookupByLibrary.simpleMessage("نعم"),
    "condition": MessageLookupByLibrary.simpleMessage("الحالة"),
    "confirm": MessageLookupByLibrary.simpleMessage("أكيد"),
    "confirmOrder": MessageLookupByLibrary.simpleMessage("اجراء الطلب"),
    "confirm_order": MessageLookupByLibrary.simpleMessage("تأكيد الطلب"),
    "countdown_timer": MessageLookupByLibrary.simpleMessage(
      "العد التنازلي للمزاد",
    ),
    "coupon_code": MessageLookupByLibrary.simpleMessage("رمز القسيمة"),
    "createNewAccount": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
    "currentOrders": MessageLookupByLibrary.simpleMessage("الطلبات الحالية"),
    "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
    "date": MessageLookupByLibrary.simpleMessage("التاريخ"),
    "deliveryDate": MessageLookupByLibrary.simpleMessage("تاريخ التسليم"),
    "deliveryFee": MessageLookupByLibrary.simpleMessage("رسوم التوصيل"),
    "details": MessageLookupByLibrary.simpleMessage("تفاصيل"),
    "didNotReceiveTheCode": MessageLookupByLibrary.simpleMessage(
      "لم يصلك الرمز؟ قم بالتواصل الان",
    ),
    "discount23": MessageLookupByLibrary.simpleMessage("خصم 23 %"),
    "dontHaveAnAccountAregistera": MessageLookupByLibrary.simpleMessage(
      "ليس لديك حساب؟ <a>سجل الآن</a>",
    ),
    "downloadInvoice": MessageLookupByLibrary.simpleMessage("حمل الفاتورة"),
    "dryClean": MessageLookupByLibrary.simpleMessage("غسيل جاف"),
    "dryCleaning": MessageLookupByLibrary.simpleMessage("غسيل جاف"),
    "ease_of_use": MessageLookupByLibrary.simpleMessage(
      "سهولة التعامل والتواصل",
    ),
    "eightAMToTenAM": MessageLookupByLibrary.simpleMessage("8 مساء - 10 مساء"),
    "eightPMToTenPM": MessageLookupByLibrary.simpleMessage("8 مساء - 10 مساء"),
    "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "ended": MessageLookupByLibrary.simpleMessage("منتهي"),
    "ended_auctions": MessageLookupByLibrary.simpleMessage("المزادات المنتهية"),
    "enterConfirmationCode": MessageLookupByLibrary.simpleMessage(
      "ادخل رمز التأكيد",
    ),
    "enterTheShippingBalanceAmount": MessageLookupByLibrary.simpleMessage(
      "أدخل مبلغ رصيد الشحن",
    ),
    "enter_mobile": MessageLookupByLibrary.simpleMessage(
      "سجل رقم جوالتا لإرسال رمز التفعيل",
    ),
    "enter_otp": MessageLookupByLibrary.simpleMessage("ادخل رمز OTP"),
    "error": MessageLookupByLibrary.simpleMessage("خطأ"),
    "errorHandler_badGateway": MessageLookupByLibrary.simpleMessage(
      "بيانات غير صالحة. يرجى المحاولة مرة أخرى.",
    ),
    "errorHandler_badRequest": MessageLookupByLibrary.simpleMessage(
      "طلب غير صالح. حاول مرة أخرى لاحقًا.",
    ),
    "errorHandler_cacheError": MessageLookupByLibrary.simpleMessage(
      "خطأ في ذاكرة التخزين المؤقت. حاول مرة أخرى لاحقًا.",
    ),
    "errorHandler_conflict": MessageLookupByLibrary.simpleMessage(
      "تم العثور على تعارض. حاول مرة أخرى لاحقًا.",
    ),
    "errorHandler_connectionError": MessageLookupByLibrary.simpleMessage(
      "فشل الاتصال بالخادم.",
    ),
    "errorHandler_connectionTimeout": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة الاتصال بالخادم.",
    ),
    "errorHandler_forbidden": MessageLookupByLibrary.simpleMessage(
      "طلب محظور. حاول مرة أخرى لاحقًا.",
    ),
    "errorHandler_genericError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. يرجى المحاولة مرة أخرى لاحقًا.",
    ),
    "errorHandler_internalServerError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. يرجى المحاولة مرة أخرى لاحقًا.",
    ),
    "errorHandler_methodNotAllowed": MessageLookupByLibrary.simpleMessage(
      "غير مدعوم. يرجى المحاولة مرة أخرى لاحقًا.",
    ),
    "errorHandler_movedPermanently": MessageLookupByLibrary.simpleMessage(
      "لم يعد هذا الرابط متاحًا.",
    ),
    "errorHandler_multipleChoices": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار خيار للمتابعة.",
    ),
    "errorHandler_noContent": MessageLookupByLibrary.simpleMessage(
      "تم بنجاح ولكن بدون محتوى.",
    ),
    "errorHandler_noInternet": MessageLookupByLibrary.simpleMessage(
      "يرجى التحقق من اتصالك بالإنترنت.",
    ),
    "errorHandler_notFound": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على الرابط. حاول مرة أخرى لاحقًا.",
    ),
    "errorHandler_paymentRequired": MessageLookupByLibrary.simpleMessage(
      "يتطلب الدفع.",
    ),
    "errorHandler_permanentRedirect": MessageLookupByLibrary.simpleMessage(
      "إعادة توجيه دائمة. لن تتغير الطريقة أو المحتوى.",
    ),
    "errorHandler_receiveTimeout": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة استقبال البيانات من الخادم.",
    ),
    "errorHandler_requestCancelled": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء الطلب إلى الخادم.",
    ),
    "errorHandler_sendTimeout": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة إرسال البيانات إلى الخادم.",
    ),
    "errorHandler_serviceUnavailable": MessageLookupByLibrary.simpleMessage(
      "الخادم تحت الصيانة.",
    ),
    "errorHandler_somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما.",
    ),
    "errorHandler_success": MessageLookupByLibrary.simpleMessage("نجاح"),
    "errorHandler_timeout": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة الطلب. حاول مرة أخرى لاحقًا.",
    ),
    "errorHandler_tooManyRequests": MessageLookupByLibrary.simpleMessage(
      "طلبات كثيرة جدًا. يرجى المحاولة مرة أخرى لاحقًا.",
    ),
    "errorHandler_unauthorized": MessageLookupByLibrary.simpleMessage(
      "المستخدم غير مصرح له. حاول مرة أخرى لاحقًا.",
    ),
    "errorHandler_unavailableForLegalReasons":
        MessageLookupByLibrary.simpleMessage("تم رفض الوصول لأسباب قانونية."),
    "errorHandler_unknownError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ غير معروف.",
    ),
    "errorHandler_unprocessableContent": MessageLookupByLibrary.simpleMessage(
      "بيانات غير قابلة للمعالجة. تحقق وحاول مرة أخرى.",
    ),
    "errorWidgets_errorCode": MessageLookupByLibrary.simpleMessage("رمز الخطأ"),
    "errorWidgets_errorContext": MessageLookupByLibrary.simpleMessage(
      "تفاصيل الخطأ",
    ),
    "errorWidgets_errorOccurred": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ!",
    ),
    "errorWidgets_errorSummary": MessageLookupByLibrary.simpleMessage(
      "ملخص الخطأ",
    ),
    "errorWidgets_exception": MessageLookupByLibrary.simpleMessage("استثناء"),
    "excellent": MessageLookupByLibrary.simpleMessage("ممتازة"),
    "exchangePoints": MessageLookupByLibrary.simpleMessage("استبدال النقاط"),
    "expiry_date": MessageLookupByLibrary.simpleMessage("تاريخ القيام البطاقة"),
    "fabricSoftener": MessageLookupByLibrary.simpleMessage("منعم ملابس"),
    "feedback": MessageLookupByLibrary.simpleMessage("تعليق"),
    "female": MessageLookupByLibrary.simpleMessage("انثى"),
    "finalizePayment": MessageLookupByLibrary.simpleMessage("إتمام الدفع"),
    "firstName": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
    "fixed_price_services": MessageLookupByLibrary.simpleMessage(
      "خدمات محددة السعر",
    ),
    "folded": MessageLookupByLibrary.simpleMessage("مطبقة"),
    "follow_auction": MessageLookupByLibrary.simpleMessage("متابعة المزاد"),
    "forgetPass": MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور"),
    "fourAMToSixAM": MessageLookupByLibrary.simpleMessage("4 صباحا - 06 صباحا"),
    "fourPMToSixPM": MessageLookupByLibrary.simpleMessage("4 مساء - 6 مساء"),
    "fullName": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
    "full_name": MessageLookupByLibrary.simpleMessage("الاسم بالكامل"),
    "general_error": m2,
    "general_noImageAvailable": MessageLookupByLibrary.simpleMessage(
      "لا توجد صورة متاحة",
    ),
    "good": MessageLookupByLibrary.simpleMessage("جيدة"),
    "grandTotal": MessageLookupByLibrary.simpleMessage("المجموع الكلي"),
    "hangItOnTheDoorWeTakeItPrepareIt": MessageLookupByLibrary.simpleMessage(
      "علقها على الباب، نأخذها ونعدها، ونغسلها ونرسلك الفاتورة",
    ),
    "hangItUpAndDontMeetTheRepresentativeYouDont":
        MessageLookupByLibrary.simpleMessage(
          "علقها ولا تقابل المندوب وما يحتاج تكون بالبيت",
        ),
    "hanged": MessageLookupByLibrary.simpleMessage("معلقة"),
    "high": MessageLookupByLibrary.simpleMessage("زياده"),
    "highest_bidder": MessageLookupByLibrary.simpleMessage("المزايد الاعلى"),
    "history": MessageLookupByLibrary.simpleMessage("السجل"),
    "nav_bar": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "hour": m3,
    "howDoesItWork": MessageLookupByLibrary.simpleMessage("ما هي طريقة العمل؟"),
    "howWasYourExperienceWithUs": MessageLookupByLibrary.simpleMessage(
      "كيف كانت تجربتك معنا؟",
    ),
    "iAgreeToThe": MessageLookupByLibrary.simpleMessage("اوافق على"),
    "iAgreeToTheTermsConditions": MessageLookupByLibrary.simpleMessage(
      "أوافق على <a>الشروط والأحكام</a>",
    ),
    "ifTheOptionIsActivatedTheLaundryWillUseTheAromaticScentIfRequired":
        MessageLookupByLibrary.simpleMessage(
          "في حال تفعيل الخيار سيتم من قبل المغسلة استخدام رايحة الملابس في حال تطلب ذلك.",
        ),
    "ifThisOptionIsActivated": MessageLookupByLibrary.simpleMessage(
      "إذا تم تفعيل هذا الخيار، ستستخدم المغسلة منعم الملابس إذا لزم الأمر",
    ),
    "ifThisOptionIsEnabledTheLaundryWillUseFabricSoftenerIfRequired":
        MessageLookupByLibrary.simpleMessage(
          "في حال تفعيل الخيار سيتم من قبل المغسلة استخدام منعم الملابس في حال تطلب ذلك.",
        ),
    "invoiceNo": m4,
    "iron": MessageLookupByLibrary.simpleMessage("كوي"),
    "ironing": MessageLookupByLibrary.simpleMessage("كوي"),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "lastName": MessageLookupByLibrary.simpleMessage("الاسم الأخير"),
    "laundryAndIroning": MessageLookupByLibrary.simpleMessage("غسيل وكوي"),
    "laundryClothesBlankets": MessageLookupByLibrary.simpleMessage(
      "غسيل ملابس/ بطانيات",
    ),
    "laundryExtras": MessageLookupByLibrary.simpleMessage("إضافات الغسيل"),
    "limitedTimeOffer": MessageLookupByLibrary.simpleMessage(
      "عرض خاص لفتره محدوده",
    ),
    "little": MessageLookupByLibrary.simpleMessage("خفيف"),
    "loading": MessageLookupByLibrary.simpleMessage("جاري التحميل"),
    "located": MessageLookupByLibrary.simpleMessage("تبعد"),
    "login": MessageLookupByLibrary.simpleMessage("سجل الدخول"),
    "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "loyaltyPoints": MessageLookupByLibrary.simpleMessage("نقاط الولاء"),
    "male": MessageLookupByLibrary.simpleMessage("ذكر"),
    "medium": MessageLookupByLibrary.simpleMessage("متوسط"),
    "meter": m5,
    "minimumOrderPrice": MessageLookupByLibrary.simpleMessage(
      "الحد الادنى للطلب",
    ),
    "mobile": MessageLookupByLibrary.simpleMessage("الجوال"),
    "more": MessageLookupByLibrary.simpleMessage("المزيد"),
    "name": MessageLookupByLibrary.simpleMessage("الاسم"),
    "nearbyWashers": MessageLookupByLibrary.simpleMessage("المغسلات الاقرب"),
    "newItem": MessageLookupByLibrary.simpleMessage("جديد"),
    "next": MessageLookupByLibrary.simpleMessage("التالي"),
    "noAccount": MessageLookupByLibrary.simpleMessage("ليس لدى حساب"),
    "noGiftsAvailable": MessageLookupByLibrary.simpleMessage(
      "لا توجد هدايا متاحة",
    ),
    "noInternetWidget_checkConnection": MessageLookupByLibrary.simpleMessage(
      "هناك مشكلة في الاتصال. يرجى المحاولة لاحقًا.",
    ),
    "noInternetWidget_noInternetConnection":
        MessageLookupByLibrary.simpleMessage("لا يوجد اتصال بالإنترنت"),
    "noLoyaltyPointsAvailable": MessageLookupByLibrary.simpleMessage(
      "لا توجد نقاط الولاء المتاحة",
    ),
    "noNotifications": MessageLookupByLibrary.simpleMessage("لا يوجد اشعارات"),
    "noOrdersYet": MessageLookupByLibrary.simpleMessage(
      "لا يوجد طلبات حتى الان",
    ),
    "notifications": MessageLookupByLibrary.simpleMessage("الاشعارات"),
    "offerCode": MessageLookupByLibrary.simpleMessage("كود العرض"),
    "offers": MessageLookupByLibrary.simpleMessage("عروض"),
    "onPressingContinueYouAgree": MessageLookupByLibrary.simpleMessage(
      "بالضغط على استمرار، انت توافق على",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "تصفح منتجاتك المفضلة بسهولة وسرعة من هاتفك!",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "اطلب بضغطة زر وتتبع حالة توصيلك في الوقت الفعلي",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "استفد من العروض اليومية والخصومات الحصرية لك!",
    ),
    "onlineOrder": MessageLookupByLibrary.simpleMessage("طلب اونلاين"),
    "or": MessageLookupByLibrary.simpleMessage("أو"),
    "orderNumber": MessageLookupByLibrary.simpleMessage("رقم الطلب"),
    "orderSchedule": MessageLookupByLibrary.simpleMessage("جدول الطلب"),
    "orderStatus": MessageLookupByLibrary.simpleMessage("حالة الطلب"),
    "orderSummary": MessageLookupByLibrary.simpleMessage("ملخص الطلب"),
    "orderValue": MessageLookupByLibrary.simpleMessage("قيمة الطلب"),
    "order_cancelled": MessageLookupByLibrary.simpleMessage("تم الغاء الطلب"),
    "order_details": MessageLookupByLibrary.simpleMessage("تفاصيل الطلب"),
    "order_number": m6,
    "orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
    "otpSent": m7,
    "otp_sent_to": MessageLookupByLibrary.simpleMessage("تم إرسال رمز OTP إلى"),
    "ourServices": MessageLookupByLibrary.simpleMessage("خدماتنا"),
    "packages": MessageLookupByLibrary.simpleMessage("الباقات"),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "passwordConfirmation": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "passwordsDoesntMatch": MessageLookupByLibrary.simpleMessage(
      "كلمات المرور غير متطابقة",
    ),
    "pay": MessageLookupByLibrary.simpleMessage("ادفع"),
    "payInvoice": MessageLookupByLibrary.simpleMessage("دفع الفاتورة"),
    "payedInvoice": MessageLookupByLibrary.simpleMessage("فاتورة مدفوعة"),
    "payment": MessageLookupByLibrary.simpleMessage("الدفع"),
    "paymentDetails": MessageLookupByLibrary.simpleMessage("تفاصيل الدفع"),
    "paymentMethods": MessageLookupByLibrary.simpleMessage("طرق الدفع"),
    "payment_method": MessageLookupByLibrary.simpleMessage("طريقة الدفع"),
    "pending": MessageLookupByLibrary.simpleMessage("معلق"),
    "personal_info": MessageLookupByLibrary.simpleMessage("البيانات الشخصية"),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "pleaseAcceptTheTermsAndConditions": MessageLookupByLibrary.simpleMessage(
      "الرجاء قبول الشروط والأحكام",
    ),
    "pleaseConfirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "الرجاء تأكيد كلمة المرور",
    ),
    "pleaseEnterAValidEmail": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال بريد إلكتروني صالح",
    ),
    "pleaseEnterAValidEmailAddress": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال عنوان بريد إلكتروني صالح",
    ),
    "pleaseEnterAValidPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال رقم هاتف صالح",
    ),
    "pleaseEnterYourEmail": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال البريد الإلكتروني",
    ),
    "pleaseEnterYourEmailAddress": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال عنوان البريد الإلكتروني",
    ),
    "pleaseEnterYourFirstName": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال الاسم الأول",
    ),
    "pleaseEnterYourLastName": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال الاسم الأخير",
    ),
    "pleaseEnterYourMobileNumberToReceiveActivationCode":
        MessageLookupByLibrary.simpleMessage(
          "سجل رقم جوالك لإرسال رمز التفعيل",
        ),
    "pleaseEnterYourName": MessageLookupByLibrary.simpleMessage(
      "الرجاء ادخال الاسم",
    ),
    "pleaseEnterYourPassword": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال كلمة المرور",
    ),
    "pleaseEnterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال رقم الهاتف",
    ),
    "pleaseSelectTheWashType": MessageLookupByLibrary.simpleMessage(
      "الرجاء اختيار نوع الغسل",
    ),
    "points": MessageLookupByLibrary.simpleMessage("نقاط"),
    "prepareYourOrder": MessageLookupByLibrary.simpleMessage(
      "جهز طلبك سيتم الاستلام  في الوقت المحدد مسبقا",
    ),
    "prepareYourOrderAndItWillBeReceivedAtThe":
        MessageLookupByLibrary.simpleMessage(
          "جهز طلبك سيتم الاستلام في الوقت المحدد مسبقًا.",
        ),
    "previousOrders": MessageLookupByLibrary.simpleMessage("الطلبات السابقة"),
    "price": MessageLookupByLibrary.simpleMessage("السعر"),
    "priceMenu": MessageLookupByLibrary.simpleMessage("قائمة الأسعار"),
    "price_vs_quality": MessageLookupByLibrary.simpleMessage(
      "السعر مقابل الجودة",
    ),
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "privacy_policy_description": MessageLookupByLibrary.simpleMessage(
      "في رغوة بروفايدر نعتزم خصوصيتك ونسعى لحماية جميع بياناتك الشخصية. يتم جمع البيانات الضرورية فقط لتقديم وتحسين تجربة الاستخدام.",
    ),
    "productDetails": m8,
    "publish": MessageLookupByLibrary.simpleMessage("نشر"),
    "punctuality": MessageLookupByLibrary.simpleMessage("اللتزام بالموعد"),
    "quantityCount": MessageLookupByLibrary.simpleMessage("عدد القطع"),
    "rate_service": MessageLookupByLibrary.simpleMessage("تقييم الخدمة"),
    "recleanSmartBag": MessageLookupByLibrary.simpleMessage(
      "شنطة ريكلين الذكية",
    ),
    "recleanSmartBagContent": MessageLookupByLibrary.simpleMessage(
      "أضف حقيبة ريكلين الذكية إلى طلبك، واستمتع بتسليم بدون تلامس، واحصل على خدمة غسيل ملابس مريحة للغاية بدون متاعب، وبدون تلامس مع شخص التسليم وبدون الحاجة إلى التواجد في شقتك في وقت الاستلام والتسليم.",
    ),
    "rectangular": MessageLookupByLibrary.simpleMessage("مستطيل"),
    "redeemPoints": MessageLookupByLibrary.simpleMessage("استخدام النقاط"),
    "register_with_application": MessageLookupByLibrary.simpleMessage(
      "سجل بالتطبيق",
    ),
    "rememberMe": MessageLookupByLibrary.simpleMessage("تذكرني"),
    "reportAProblem": MessageLookupByLibrary.simpleMessage("الإبلاغ عن مشكلة"),
    "representativeIsOnTheWay": MessageLookupByLibrary.simpleMessage(
      "المندوب في الطريق لاستلام الطلب ",
    ),
    "requestAndSpecifyTheTypeOfWashingForEachBag":
        MessageLookupByLibrary.simpleMessage("اطلب وحدد نوع الغسيل لكل شنطة"),
    "requestSchedule": MessageLookupByLibrary.simpleMessage("جدول الطلب"),
    "requests": MessageLookupByLibrary.simpleMessage("طلبات"),
    "resend": MessageLookupByLibrary.simpleMessage("اعد الارسال؟"),
    "resendAgain": MessageLookupByLibrary.simpleMessage("اعاده الارسال؟"),
    "resendOtp": MessageLookupByLibrary.simpleMessage("اعادة ارسال الكود"),
    "reserve_price": MessageLookupByLibrary.simpleMessage("الحد الأدنى"),
    "retailPrice": MessageLookupByLibrary.simpleMessage("سعر التجزئة"),
    "returnToHome": MessageLookupByLibrary.simpleMessage(
      "العودة إلى الصفحة الرئيسية",
    ),
    "reviewOrder": MessageLookupByLibrary.simpleMessage("مراجعة الطلب"),
    "review_data": MessageLookupByLibrary.simpleMessage("مراجعة البيانات"),
    "rial": MessageLookupByLibrary.simpleMessage("ريال"),
    "riyal": m9,
    "schedule_order": MessageLookupByLibrary.simpleMessage("جدولة الطلب"),
    "search": MessageLookupByLibrary.simpleMessage("بحث..."),
    "searching_technician": MessageLookupByLibrary.simpleMessage(
      "جاري البحث عن فني",
    ),
    "selectADeliveryTime": MessageLookupByLibrary.simpleMessage(
      "حدد وقت التسليم",
    ),
    "selectAPickupTime": MessageLookupByLibrary.simpleMessage(
      "حدد وقت الاستلام",
    ),
    "select_location": MessageLookupByLibrary.simpleMessage("تحديد الموقع"),
    "select_service": MessageLookupByLibrary.simpleMessage("حدد الخدمة"),
    "send": MessageLookupByLibrary.simpleMessage("إرسال"),
    "sendActivationCode": MessageLookupByLibrary.simpleMessage(
      "ارسال رمز التفعيل",
    ),
    "send_message": MessageLookupByLibrary.simpleMessage("اترك رسالتك"),
    "service": MessageLookupByLibrary.simpleMessage("الخدمات"),
    "service1": MessageLookupByLibrary.simpleMessage("1 -الخدمه"),
    "service2": MessageLookupByLibrary.simpleMessage("2 -الخدمه"),
    "service3": MessageLookupByLibrary.simpleMessage("3 -الخدمه"),
    "serviceFee": MessageLookupByLibrary.simpleMessage("رسوم الخدمة"),
    "service_completed": MessageLookupByLibrary.simpleMessage(
      "تمت الخدمة بنجاح",
    ),
    "service_fee": MessageLookupByLibrary.simpleMessage("رسوم الخدمة"),
    "service_quality": MessageLookupByLibrary.simpleMessage("جودة الخدمة"),
    "services_subtitle": MessageLookupByLibrary.simpleMessage(
      "جمعنا لك كل الخدمات التي يمتاجها بيتك",
    ),
    "services_title": MessageLookupByLibrary.simpleMessage("خدمات فتح"),
    "setANewPassword": MessageLookupByLibrary.simpleMessage(
      "تعيين كلمة مرور جديدة",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("الاعدادات"),
    "showYourInvoice": MessageLookupByLibrary.simpleMessage("اعرض فاتورتك"),
    "signIn": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "sixAMToEightAM": MessageLookupByLibrary.simpleMessage(
      "6 صباحا - 08 صباحا",
    ),
    "sixPMToEightPM": MessageLookupByLibrary.simpleMessage("6 مساء - 8 مساء"),
    "skip": MessageLookupByLibrary.simpleMessage("تخطي"),
    "squared": MessageLookupByLibrary.simpleMessage("مربع"),
    "starchLevel": MessageLookupByLibrary.simpleMessage("مستوى النشا"),
    "start_price": MessageLookupByLibrary.simpleMessage("سعر البدء"),
    "step2": MessageLookupByLibrary.simpleMessage("الخطوة 2"),
    "step3": MessageLookupByLibrary.simpleMessage("الخطوة 3"),
    "store": MessageLookupByLibrary.simpleMessage("متجر"),
    "subject": MessageLookupByLibrary.simpleMessage("الموضوع"),
    "submit": MessageLookupByLibrary.simpleMessage("إرسال"),
    "subtotal": MessageLookupByLibrary.simpleMessage("المجموع الفرعي"),
    "surName": MessageLookupByLibrary.simpleMessage("اسم العائلة"),
    "tabs_home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "tabs_offers": MessageLookupByLibrary.simpleMessage("العروض"),
    "tabs_orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
    "tabs_settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "tabs_store": MessageLookupByLibrary.simpleMessage("المتجر"),
    "taxId": m10,
    "technical_support": MessageLookupByLibrary.simpleMessage("الدعم الفني"),
    "technical_support_address": MessageLookupByLibrary.simpleMessage(
      "الرياض - الملاء - 12845 - طريق صالح الدين",
    ),
    "technical_support_contact": MessageLookupByLibrary.simpleMessage(
      "+966 55 768 6624",
    ),
    "technician_on_way": MessageLookupByLibrary.simpleMessage(
      "الفني في الطريق اليك",
    ),
    "tenAMToTwelvePM": MessageLookupByLibrary.simpleMessage(
      "10 مساء - 12 مساء",
    ),
    "tenPMToTwelveAM": MessageLookupByLibrary.simpleMessage(
      "10 مساء - 12 صباحا",
    ),
    "termsAndConditions": MessageLookupByLibrary.simpleMessage(
      "شروط وسياسة الاستخدام",
    ),
    "terms_of_use": MessageLookupByLibrary.simpleMessage("شروط الاستخدام"),
    "thankYouForYourTime": MessageLookupByLibrary.simpleMessage(
      "شكرًا لك على وقتك",
    ),
    "thanks_for_time": MessageLookupByLibrary.simpleMessage("شكرا لوقتكم"),
    "theOrderWasDeliveredByTheCaptain": MessageLookupByLibrary.simpleMessage(
      "تم تسليم الطلب من قبل القبطان",
    ),
    "theRepresentativeIsOnHisWayToReceiveYourOrder":
        MessageLookupByLibrary.simpleMessage("المندوب في الطريق لاستلام طلبك"),
    "theTwoPartiesMeetToDeliverTheProduct":
        MessageLookupByLibrary.simpleMessage("يلتقي الطرفان لتسليم المنتج"),
    "timeAgo_day": m11,
    "timeAgo_hour": m12,
    "timeAgo_minute": m13,
    "timeAgo_second": m14,
    "toMyOrder": MessageLookupByLibrary.simpleMessage("للطلب الخاص بي"),
    "total": MessageLookupByLibrary.simpleMessage("مجموع"),
    "totalAfterDiscount": MessageLookupByLibrary.simpleMessage(
      "المجموع بعد الخصم",
    ),
    "totalBeforeDiscount": MessageLookupByLibrary.simpleMessage(
      "المجموع قبل الخصم",
    ),
    "totalCost": MessageLookupByLibrary.simpleMessage("التكلفة الإجمالية"),
    "totalVat": MessageLookupByLibrary.simpleMessage("الإجمالي (ض.ق.م)"),
    "total_vat": MessageLookupByLibrary.simpleMessage(
      "الإجمالي شامل ضريبة القيمة المضافة",
    ),
    "trackOrder": MessageLookupByLibrary.simpleMessage("تتبع الطلب"),
    "track_order": MessageLookupByLibrary.simpleMessage("متابعة الطلب"),
    "twelveAMToTwoAM": MessageLookupByLibrary.simpleMessage(
      "12 صباحا - 02 صباحا",
    ),
    "twelvePMToTwoPM": MessageLookupByLibrary.simpleMessage("12 مساء - 2 مساء"),
    "twoAMToFourAM": MessageLookupByLibrary.simpleMessage("2 صباحا - 04 صباحا"),
    "twoPMToFourPM": MessageLookupByLibrary.simpleMessage("2 مساء - 4 مساء"),
    "typeOfIroning": MessageLookupByLibrary.simpleMessage(
      "نوع الكوي الغترة/الشماغ",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("غير معروف"),
    "update_available": MessageLookupByLibrary.simpleMessage("تحديث متاح"),
    "update_availableBody": MessageLookupByLibrary.simpleMessage(
      "يتوفر إصدار جديد. قم بالتحديث الآن للحصول على الميزات الجديدة.",
    ),
    "update_required": MessageLookupByLibrary.simpleMessage("التحديث مطلوب"),
    "update_requiredBody": MessageLookupByLibrary.simpleMessage(
      "يتطلب إصدار جديد من التطبيق للمتابعة. يرجى التحديث.",
    ),
    "useCode": MessageLookupByLibrary.simpleMessage("استخدام الكود"),
    "used": MessageLookupByLibrary.simpleMessage("مستعمل"),
    "vat": m15,
    "vat15": MessageLookupByLibrary.simpleMessage("القيمة المضافة (15%)"),
    "verifyAccount": MessageLookupByLibrary.simpleMessage("تحقق من الحساب"),
    "veryGood": MessageLookupByLibrary.simpleMessage("جيدة جدًا"),
    "viewYourReceipt": MessageLookupByLibrary.simpleMessage("عرض الإيصال"),
    "waiting_for_price": MessageLookupByLibrary.simpleMessage(
      "في انتظار تحديد السعر من الفني",
    ),
    "wallet": MessageLookupByLibrary.simpleMessage("المحفظة"),
    "warning": MessageLookupByLibrary.simpleMessage("تحذير"),
    "washAndIron": MessageLookupByLibrary.simpleMessage("اغسل واكوي"),
    "weDeliverItAndHangItOnYourDoorWithout":
        MessageLookupByLibrary.simpleMessage(
          "نوصلها ونعلقها على بابك من دون تواجدك في البيت",
        ),
    "weHaveBagsEachOneLabeledWithIroningIroningAnd":
        MessageLookupByLibrary.simpleMessage(
          "معنا اكياس كل كيس مكتوب عليه كوي+ كوي وغسيل+ غسيل جاف",
        ),
    "wholesalePrice": MessageLookupByLibrary.simpleMessage("سعر الجملة"),
    "whyTheSmartRecleanLaundryBag": MessageLookupByLibrary.simpleMessage(
      "لماذا شنطة مغسلة ريكلين الذكية؟",
    ),
    "win": MessageLookupByLibrary.simpleMessage("اكسب"),
    "withMarzam": MessageLookupByLibrary.simpleMessage("مع مرزم"),
    "without": MessageLookupByLibrary.simpleMessage("بدون"),
    "writeYourProblem": MessageLookupByLibrary.simpleMessage("اكتب مشكلتك"),
    "youCanCancelTheOrder": MessageLookupByLibrary.simpleMessage(
      "يمكنك إلغاء الطلب قبل مغادرة الكابتن واستلام حقيبة الملابس",
    ),
    "youCanCancelTheOrderAtAnyTime": MessageLookupByLibrary.simpleMessage(
      "تقدر تلغي الطلب قبل خروج الكابتن واستلام شنطة الملابس",
    ),
    "youCanPayNow": MessageLookupByLibrary.simpleMessage("يمكنك الدفع الان"),
    "youHavePoints": m16,
    "youHaveReceivedYourOrder": MessageLookupByLibrary.simpleMessage(
      "تم استلام طلبك",
    ),
    "yourLaundryHasBeenStarted": MessageLookupByLibrary.simpleMessage(
      "تم بدأ الغسيل يرجى دفع الفاتورة الان لتجهيز طلبك للتوصيل",
    ),
    "yourLocation": MessageLookupByLibrary.simpleMessage("موقعك"),
    "yourOrderIsOnItsWay": MessageLookupByLibrary.simpleMessage(
      "طلبك في الطريق الى المغسلة وسيتم ارسال الفاتورة قريبا",
    ),
    "yourOrderIsReadyForDelivery": MessageLookupByLibrary.simpleMessage(
      "طلبك جاهز للتسليم",
    ),
    "yourOrderWillBeDeliveredAtTheSpecifiedTime":
        MessageLookupByLibrary.simpleMessage(
          "جهز طلبك سيتم الاستلام  في الوقت المحدد مسبقا",
        ),
    "yourPasswordMustBeAtLeast8Characters":
        MessageLookupByLibrary.simpleMessage(
          "يجب أن تتكون كلمة المرور من 8 أحرف على الأقل",
        ),
  };
}
