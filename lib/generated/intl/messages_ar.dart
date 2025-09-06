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

  static String m0(product) => "عن المنتج <a>(\${product})</a>";
  static String m1(amount) => "سيتم خصم مبلغ قدره \${amount} ريال سعودي للتحقق من بطاقتك. سيتم استرداد المبلغ فورًا";
  static String m2(errCode) => "خطأ: \${errCode}";
  static String m3(date) => "\${date} ساعة";
  static String m4(invoiceNo) => "الفاتورة رقم #\${invoiceNo}";
  static String m5(meter) => "\${meter} متر";
  static String m6(orders) => "الحد الأدنى للطلب";
  static String m7(orderNumber) => "رقم الطلب \${orderNumber}";
  static String m8(email) => "تم إرسال رمز التحقق إلى \${email}";
  static String m9(product) => "تفاصيل المنتج <a>(\${product})</a>";
  static String m10(amount) => "\${amount} ريال";
  static String m11(id) => "الرقم الضريبي: \${id}";
  static String m12(count) => "\${Intl.plural(count, one: 'منذ يوم واحد', other: 'منذ \${count} أيام')}";
  static String m13(count) => "\${Intl.plural(count, one: 'منذ ساعة واحدة', other: 'منذ \${count} ساعات')}";
  static String m14(count) => "\${Intl.plural(count, one: 'منذ دقيقة واحدة', other: 'منذ \${count} دقائق')}";
  static String m15(count) => "\${Intl.plural(count, zero: 'الآن', one: 'منذ ثانية واحدة', other: 'منذ \${count} ثوانٍ')}";
  static String m16(vat) => "القيمة المضافة (\${vat})";
  static String m17(points) => "لديك <a>\${points}</a> نقطة";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutProduct": m0,
        "aboutSupplier": MessageLookupByLibrary.simpleMessage("حول المورد"),
        "account": MessageLookupByLibrary.simpleMessage("الحساب"),
        "add": MessageLookupByLibrary.simpleMessage("اضف"),
        "addToCart": MessageLookupByLibrary.simpleMessage("أضف إلى السلة"),
        "advantages": MessageLookupByLibrary.simpleMessage("المميزات"),
        "amountWillBeCharged": m1,
        "app_name": MessageLookupByLibrary.simpleMessage("تاسكورا - رغوة"),
        "balance": MessageLookupByLibrary.simpleMessage("الرصيد"),
        "cancel": MessageLookupByLibrary.simpleMessage("الغاء"),
        "cart": MessageLookupByLibrary.simpleMessage("السلة"),
        "categories": MessageLookupByLibrary.simpleMessage("الفئات"),
        "checkout": MessageLookupByLibrary.simpleMessage("الدفع"),
        "common_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "common_confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "common_error": MessageLookupByLibrary.simpleMessage("خطأ"),
        "common_next": MessageLookupByLibrary.simpleMessage("التالى"),
        "common_no": MessageLookupByLibrary.simpleMessage("لا"),
        "common_ok": MessageLookupByLibrary.simpleMessage("حسنًا"),
        "common_success": MessageLookupByLibrary.simpleMessage("نجاح"),
        "common_yes": MessageLookupByLibrary.simpleMessage("نعم"),
        "confirm": MessageLookupByLibrary.simpleMessage("أكيد"),
        "confirmOrder": MessageLookupByLibrary.simpleMessage("اجراء الطلب"),
        "createNewAccount": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
        "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
        "errorHandler_badRequest": MessageLookupByLibrary.simpleMessage("طلب غير صالح. حاول مرة أخرى لاحقًا."),
        "errorHandler_noInternet": MessageLookupByLibrary.simpleMessage("يرجى التحقق من اتصالك بالإنترنت."),
        "exchangePoints": MessageLookupByLibrary.simpleMessage("استبدال النقاط"),
        "firstName": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
        "general_error": m2,
        "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
        "hour": m3,
        "invoiceNo": m4,
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "lastName": MessageLookupByLibrary.simpleMessage("الاسم الأخير"),
        "login": MessageLookupByLibrary.simpleMessage("سجل الدخول"),
        "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
        "meter": m5,
        "minimumOrder": m6,
        "name": MessageLookupByLibrary.simpleMessage("الاسم"),
        "next": MessageLookupByLibrary.simpleMessage("التالي"),
        "onlineOrder": MessageLookupByLibrary.simpleMessage("طلب اونلاين"),
        "orderCancelled": MessageLookupByLibrary.simpleMessage("تم الغاء الطلب"),
        "orderNumber": m7,
        "orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
        "otpSent": m8,
        "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "pleaseEnterYourEmail": MessageLookupByLibrary.simpleMessage("الرجاء إدخال البريد الإلكتروني"),
        "pleaseEnterYourPassword": MessageLookupByLibrary.simpleMessage("الرجاء إدخال كلمة المرور"),
        "productDetails": m9,
        "resendAgain": MessageLookupByLibrary.simpleMessage("اعاده الارسال؟"),
        "riyal": m10,
        "settings": MessageLookupByLibrary.simpleMessage("الاعدادات"),
        "signIn": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "taxId": m11,
        "timeAgo_day": m12,
        "timeAgo_hour": m13,
        "timeAgo_minute": m14,
        "timeAgo_second": m15,
        "total": MessageLookupByLibrary.simpleMessage("مجموع"),
        "vat": m16,
        "youHavePoints": m17,
      };
}