class FaqModel {
  const FaqModel({
    required this.question,
    required this.answer,
  });
  final String question;
  final String answer;
}

final List<FaqModel> dummyFaqs = [
  const FaqModel(
    question: "كيف يمكن ان استفيد من العروض",
    answer:
        "يمكنك الاستفادة من العرض عن طريق الاشتراك في العروض التي تحتوي خصومات ومزايا تتبع كل باقة.",
  ),
  const FaqModel(
    question: "هل العروض متاحة طوال السنة؟",
    answer: "العروض متاحة لفترة محدودة حسب الشروط والأحكام.",
  ),
  const FaqModel(
    question: "هل يمكن مشاركة العرض مع صديق؟",
    answer: "لا، العروض شخصية ولا يمكن تحويلها.",
  ),
];
