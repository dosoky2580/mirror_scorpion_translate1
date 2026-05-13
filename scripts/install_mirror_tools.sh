#!/bin/bash
# سكريبت الأدوات المستقل - ميرور
echo "--- بدء تجهيز أدوات ميرور ---"

# تحديث المستودعات
pkg update && pkg upgrade -y

# تثبيت بايثون وفلاتر (الأدوات الأساسية)
pkg install python -y
pkg install git -y

# تثبيت مكتبات التحليل اللغوي لركن الإبداع
pip install profanity-check

echo "--- الأدوات جاهزة يا تامر ---"
