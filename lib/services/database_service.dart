import 'dart:async';

class DatabaseService {
  // هنا بنجهز الخزنة لحفظ كلماتك وترجماتك
  
  Future<void> saveTranslation(String original, String translated) async {
    // كود الحفظ في قاعدة البيانات
    print("تم حفظ النص في ذاكرة ميرور: $original -> $translated");
  }

  Future<List<Map<String, String>>> getHistory() async {
    // كود استرجاع تاريخك (اللي كتبناه قبل كدة)
    return [
      {"original": "مرحباً", "translated": "Hello"},
      {"original": "كيف حالك", "translated": "How are you?"}
    ];
  }
}
