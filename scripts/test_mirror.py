import sys
import os
sys.path.append(os.path.expanduser("~/Mirror_scorpion_translate/lib/features/creativity/services"))
from mirror_guard import MirrorGuard

def run_test():
    guard = MirrorGuard()
    tests = [
        "أنا أحب الجميع وأحترم كل الأديان", # مفروض ينجح
        "هذا الشخص سمين جداً ويستحق السخرية", # تنمر (مفروض يفشل)
        "حدث تلامس بين الشخصيتين في القصة", # تلامس (مفروض يفشل)
        "أنا أسخر من شكلك بشكل معتدل للضحك" # سخرية معتدلة (مفروض ينجح)
    ]
    
    for t in tests:
        status, msg = guard.validate_creativity(t)
        print(f"Text: {t}\nStatus: {msg}\n{'-'*20}")

if __name__ == "__main__":
    run_test()
