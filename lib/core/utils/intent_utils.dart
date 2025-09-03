import 'package:url_launcher/url_launcher.dart';

class IntentUtils {
  static Future<bool> openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      return launchUrl(
        uri,
        mode: inApp
            ? LaunchMode.inAppWebView // Opens the URL in an in-app WebView
            : LaunchMode.externalApplication, // Opens the URL in the browser
      );
    }
    return false;
  }

  static Future<void> makePhoneCall(String phoneNumber) async {
    final launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future<void> openWhatsApp({
    required String phoneNumber,
    String message = "",
  }) async {
    final encodedMessage = Uri.encodeComponent(message);
    final whatsappUri = Uri.parse(
      message == ""
          ? 'https://wa.me/$phoneNumber'
          : 'https://wa.me/$phoneNumber?text=$encodedMessage',
    );

    await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
  }

  static Future<void> sendEmail(String email) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map(
            (MapEntry<String, String> e) =>
        '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
          .join('&');
    }

    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(<String, String>{
        'subject': 'Feedback regarding the mobile app',
      }),
    );

    await launchUrl(emailLaunchUri);
  }
}
