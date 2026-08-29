import os
import re
import requests

# LeetCode ও Codeforces
LEETCODE_USERNAME = "rayhan-khan-dev"
CODEFORCES_USERNAME = "rayhan-khan-dev"

def get_leetcode_solved(username):
    if not username:
        return 0
    try:
        url = f"https://leetcode-stats-api.herokuapp.com/{username}"
        res = requests.get(url, timeout=10).json()
        if res.get("status") == "success":
            return res.get("totalSolved", 0)
    except Exception:
        pass
    return 0

def get_codeforces_solved(handle):
    if not handle:
        return 0
    try:
        url = f"https://codeforces.com/api/user.status?handle={handle}&from=1&count=10000"
        res = requests.get(url, timeout=10).json()
        if res.get("status") == "OK":
            solved = set()
            for sub in res.get("result", []):
                if sub.get("verdict") == "OK":
                    prob = sub.get("problem", {})
                    solved.add(f"{prob.get('contestId')}_{prob.get('index')}")
            return len(solved)
    except Exception:
        pass
    return 0

def count_category_problems(folder_prefixes):
    valid_exts = {".cpp", ".py", ".c", ".java"}
    count = 0
    for root, _, files in os.walk("."):
        if any(ignored in root for ignored in [".git", ".github", "scripts"]):
            continue
        folder_name = os.path.basename(root)
        if any(folder_name.startswith(prefix) for prefix in folder_prefixes):
            for file in files:
                if any(file.endswith(ext) for ext in valid_exts):
                    count += 1
    return count

def count_language_files():
    cpp_count = 0
    py_count = 0
    for root, _, files in os.walk("."):
        if any(ignored in root for ignored in [".git", ".github", "scripts"]):
            continue
        for file in files:
            if file.endswith(".cpp") or file.endswith(".c"):
                cpp_count += 1
            elif file.endswith(".py"):
                py_count += 1
    return cpp_count, py_count

def generate_bar(percentage, length=10):
    filled = int(length * (percentage / 100))
    empty = length - filled
    return "█" * filled + "░" * empty

def generate_master_bar(percentage, length=20):
    filled = int(length * (percentage / 100))
    empty = length - filled
    return "█" * filled + "░" * empty

def update_readme():
    with open("README.md", "r", encoding="utf-8") as f:
        content = f.read()

    # Category progress
    foundation_count = count_category_problems(["01"])
    ds_count = count_category_problems(["02", "03", "04", "05", "10", "11", "12", "13", "20"])
    algo_count = count_category_problems(["06", "07", "09", "14", "15", "16", "17", "18", "19", "21"])
    patterns_count = count_category_problems(["08", "22"])
    prob_solving_count = count_category_problems(["23", "25", "26"])
    interview_count = count_category_problems(["24"])

    p_found = min(int((foundation_count / 15) * 100), 100)
    p_ds = min(int((ds_count / 80) * 100), 100)
    p_algo = min(int((algo_count / 100) * 100), 100)
    p_patterns = min(int((patterns_count / 40) * 100), 100)
    p_prob = min(int((prob_solving_count / 150) * 100), 100)
    p_interview = min(int((interview_count / 75) * 100), 100)

    # Platforms
    lc_solved = get_leetcode_solved(LEETCODE_USERNAME)
    cf_solved = get_codeforces_solved(CODEFORCES_USERNAME)
    cses_solved = 0
    hr_solved = 0
    custom_solved = count_category_problems([f"{i:02d}" for i in range(1, 27)])

    total_solved = lc_solved + cf_solved + cses_solved + hr_solved + custom_solved
    master_percentage = min(int((total_solved / 650) * 100), 100)

    # Languages
    cpp_files, py_files = count_language_files()
    total_lang_files = cpp_files + py_files
    cpp_pct = int((cpp_files / total_lang_files) * 100) if total_lang_files > 0 else 0
    py_pct = int((py_files / total_lang_files) * 100) if total_lang_files > 0 else 0

    # 1. Progress Block
    progress_block = f"""<!-- START_SECTION:progress -->
```text
DSA MASTERY

[{generate_master_bar(master_percentage)}] {master_percentage}%

Foundation       {generate_bar(p_found)}  {p_found}%
Data Structures  {generate_bar(p_ds)}  {p_ds}%
Algorithms       {generate_bar(p_algo)}  {p_algo}%
Patterns         {generate_bar(p_patterns)}  {p_patterns}%
Problem Solving  {generate_bar(p_prob)}  {p_prob}%
Interviews       {generate_bar(p_interview)}  {p_interview}%