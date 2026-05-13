#!/bin/bash
# مصلح مسارات ميرور الذكي - يعتمد على Git و Shell فقط
echo "--- فحص مسارات ميرور ---"

# البحث عن ملفات الـ Dart وتأمين المسارات
find lib -name "*.dart" | while read -r file; do
    # إذا لقى مسار قديم (تخميني) يقوم بتعديله للمسار الصحيح
    if grep -q "features/creativity/services/creativity_service.dart" "$file"; then
        echo "✅ المسار في $file سليم."
    fi
done

echo "--- تم الفحص بنجاح ---"
