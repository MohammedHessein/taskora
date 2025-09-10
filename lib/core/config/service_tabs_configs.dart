const Map<String, List<String>> serviceTabsConfig = {
  "electricity": [
    "tabs.electricity.main",
    "tabs.electricity.installation",
    "tabs.electricity.other",
  ],
  "plumbing": [
    "tabs.plumbing.installation",
    "tabs.plumbing.ChangeImpactEstablishment",
    "tabs.plumbing.other",
  ],
  "ac": [
    "tabs.ac.split",
    "tabs.ac.window",
    "tabs.ac.central",
    "tabs.ac.other",
  ],
  "satellite": [
    "tabs.satellite.programming",
    "tabs.satellite.installation",
    "tabs.satellite.other",
  ],
};
const Map<String, List<Map<String, String>>> serviceItems = {
  "tabs.electricity.main": [
    {"title": "تغيير فيش", "price": "19.0"},
    {"title": "تركيب مفتاح مكيف او سخان", "price": "19.0"},
    {"title": "تغيير فيش", "price": "19.0"},
  ],
  "tabs.plumbing.installation": [
    {"title": "تغيير شطاف", "price": "19.0"},
    {"title": "تركيب سماعة دش", "price": "19.0"},
    {"title": "تسليك انسداد حوض المطبخ", "price": "19.0"},
    {"title": "تغيير سخان مخفي", "price": "19.0"},
  ],
  "tabs.ac.split": [
    {"title": "غسيل مكيف (تنظيف الوحدة الداخلية والخارجية)", "price": "19.0"},
    {"title": "إصلاح تسريبات", "price": "19.0"},
    {"title": "تنظيف جميع الوحدات + تعبئة فريون", "price": "19.0"},
    {"title": "تركيب مكيف جديد", "price": "19.0"},
  ],
  "tabs.satellite.programming": [
    {"title": "برمجة داخلية", "price": "19.0"},
    {"title": "برمجة دش", "price": "19.0"},
    {"title": "برمجة رسيفر + صحن", "price": "19.0"},
  ],
};
