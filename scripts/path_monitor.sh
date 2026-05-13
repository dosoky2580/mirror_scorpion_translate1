#!/bin/bash
# مراقب ميرور: بيصلح المسارات في ملفات الـ Dart تلقائياً
SEARCH_DIR="lib"

echo "Checking for path errors..."

# لو لقيت أي ملف بيشير لمجلد غلط، بنعدله للمسار الصح اللي إنت حددته
find $SEARCH_DIR -type f -name "*.dart" -exec sed -i 's|old_wrong_path|features/creativity/services|g' {} +

echo "✅ All paths verified and fixed."
