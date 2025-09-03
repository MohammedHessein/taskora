class ApiConstants {
  ApiConstants._();

  // Token consts
  static const String accessTokenKey = "accessToken";
  static const String refreshTokenKey = "";

  // API headers
  static const String applicationJson = "application/json";
  static const apiTimeOut = 60000;

  // API endpoints
  static const apiBaseUrl = "https://reclean.coddiv.com/api/v1/";
  static const imageUrl = "https://reclean.coddiv.com/";
  static const registerEndPoint = "auth/register";
  static const loginEndPoint = "auth/login";
  static const resendCodeEndPoint = "/auth/resend-code";
  static const verifyAccountEndPoint = "/auth/check-otp";
  static const updateFcmTokenEndPoint = "/auth/update-fcm-token";
  static const offersEndPoint = "offers";
  static const discountPercentageEndPoint = "/coupons/discount-percentage";
  static const servicesEndPoint = "services";
  static const additionalServicesEndPoint = "additional-services";
  static const getWashTypesByServiceIdEndPoint =
      "services/{serviceId}/washes-types";
  static const createOrderEndPoint = "orders";
  static const nearestWashersEndPoint = "laundries";
  static const allWashTypesEndPoint = "washes-types";
  static const getLoyaltyAdvertisementsEndPoint = "loyalties/advertisements";
  static const getMyLoyaltyEndPoint = "loyalties/";
  static const getOrderStatusEndPoint = "orders/{orderId}/get-status";
  static const cancelOrderEndPoint = "orders/{orderId}/cancel";
  static const orderDetailsEndPoint = "orders/{orderId}/show";
  static const getDiscountPercentageEndPoint =
      "coupons/discount-percentage?code={code}";
  static const previousOrdersEndPoint = "orders/old";
  static const currentOrdersEndPoint = "orders/current";
  static const appSettingsEndPoint = "pages/app-settings";
  static const getMyBalanceEndPoint = "wallets/get-balance";
  static const notificationsEndPoint = "notifications";
}
