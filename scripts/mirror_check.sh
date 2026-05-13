#!/bin/bash
# سكريبت فحص جاهزية المستودع - ميرور
REPO_URL="https://github.com/dosoky2580/mirror_scorpion_translate.git"

echo "--- فحص حالة المستودع على جيت هاب ---"

# 1. التأكد من الاتصال
git ls-remote $REPO_URL &> /dev/null
if [ $? -ne 0 ]; then
    echo "❌ خطأ: مش قادر أوصل للمستودع. تأكد من الاسم أو التوكن."
    exit 1
fi

# 2. تجهيز الملفات الناقصة (README و .gitignore) لو مش موجودين
if [ ! -f "README.md" ]; then
    echo "# Mirror Scorpion Translate" > README.md
    echo "مشروع ميرور - ركن الإبداع والترجمة" >> README.md
fi

# 3. التأكد من وجود فرع main
git branch -M main

# 4. محاولة سحب أي ملفات (حتى لو المستودع فاضي) لتجنب التعارض
git pull origin main --rebase &> /dev/null

echo "✅ المستودع جاهز للاستقبال الآن يا تامر."
