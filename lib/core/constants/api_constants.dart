class ApiConstants {
  ApiConstants._();

  // Token consts
  static const String accessTokenKey = "accessToken";
  static const String refreshTokenKey = "";

  // API headers
  static const String applicationJson = "application/json";
  static const apiTimeOut = 60000;

  // API endpoints
  static const apiBaseUrl = "https://ragwahw.com/api/v2/";
  static const imageUrl = "https://ragwahw.com/";
  static const registerEndPoint = "auth/register";
  static const loginEndPoint = "auth/login";
  static const resendCodeEndPoint = "/auth/resend-code";
  static const verifyAccountEndPoint = "/auth/check-otp";
  static const updateFcmTokenEndPoint = "/auth/update-fcm-token";

  static const notificationsEndPoint = "notifications";
}
