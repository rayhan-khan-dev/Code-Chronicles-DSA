# 📌 08. Two Pointers & Sliding Window

Two Pointers and Sliding Window optimize nested-loop brute force O(N^2) solutions into linear O(N) runtime by maintaining dynamic boundaries and leveraging monotonicity properties within linear data sequences.

---

## 🧠 Core Conceptual Breakdown

### 1. Two Pointers Classification

- **Opposite-Direction Pointers (Converging):** One pointer starts at the left index (0) and the other at the right index (N - 1). They iterate inward toward each other until they meet.
  - _Primary Use Cases:_ Sorted array target searching (Two Sum II), Palindrome verification, Trapping rainwater.
- **Same-Direction Pointers (Fast & Slow):** Both pointers start at index 0 and move forward at different rates or under different conditional triggers.
  - _Primary Use Cases:_ Removing duplicates in-place, linked list cycle detection, partitioning subarrays.

### 2. Sliding Window Mechanics

- **Fixed-Size Window:** The window length K remains invariant throughout execution. Shift the window right by adding the incoming element at index R and subtracting the exiting element at index R - K.
  - Formula: Window Sum = Window Sum + A[R] - A[R - K]
- **Variable-Size (Dynamic) Window:** The window expands rightward (R++) to satisfy a condition, and contracts leftward (L++) when constraints are violated:

```text
Initialize: L = 0, R = 0
For R from 0 to N - 1:
    Add A[R] to current state
    While state violates constraints:
        Remove A[L] from state
        L++
    Update global optimal answer with current window size (R - L + 1)
```

---

## ⏱️ Pattern Complexity Analysis

| Technique                  | Time Complexity | Auxiliary Space | Key Trigger in Problem Statement                            |
| :------------------------- | :-------------: | :-------------: | :---------------------------------------------------------- |
| **Converging Pointers**    |      O(N)       |      O(1)       | "Sorted array", "Pair with given sum", "Reverse"            |
| **Fast & Slow Pointers**   |      O(N)       |      O(1)       | "Remove elements in-place", "Cycle detection"               |
| **Fixed Sliding Window**   |      O(N)       |  O(1) or O(K)   | "Subarray of exact size K", "Maximum average of size K"     |
| **Dynamic Sliding Window** |      O(N)       |  O(K) HashMap   | "Longest/Shortest continuous subarray satisfying condition" |

---

## 🎥 Curated Video Lectures

| Topic                                             | Primary Instructor     | Video / Playlist Link                                                                        |
| :------------------------------------------------ | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Sliding Window & Two Pointers Complete Series** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0q75GlXW434SZ466w52auQD) |
| **Sliding Window Pattern & Visualizations**       | NeetCode               | [Watch on YouTube](https://www.youtube.com/watch?v=MK-NZ4hN7hk)                              |
| **Two Pointers Comprehensive Guide**              | Aditya Verma           | [Watch on YouTube](https://www.youtube.com/playlist?list=PL_z_8CaSLPWeM8BDJmIYDaoQ5zuwyxnfj) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                                      | Difficulty | Variant                                    |                                                       Solution Walkthrough                                                        |
| :-: | :------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :----------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------: |
|  1  | [Two Sum II - Sorted Array (LeetCode 167)](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)                                  |  🟢 Easy   | Converging Two Pointers                    |                  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+167+Two+Sum+II+NeetCode)                  |
|  2  | [3Sum (LeetCode 15)](https://leetcode.com/problems/3sum/)                                                                                    | 🟡 Medium  | Sorting + Converging Two Pointers          |                     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+15+3Sum+NeetCode)                      |
|  3  | [Container With Most Water (LeetCode 11)](https://leetcode.com/problems/container-with-most-water/)                                          | 🟡 Medium  | Greedy Converging Pointers                 |           [Video Solution](https://www.youtube.com/results?search_query=LeetCode+11+Container+With+Most+Water+NeetCode)           |
|  4  | [Longest Substring Without Repeating Characters (LeetCode 3)](https://leetcode.com/problems/longest-substring-without-repeating-characters/) | 🟡 Medium  | Variable Sliding Window + Map              | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+3+Longest+Substring+Without+Repeating+Characters+NeetCode) |
|  5  | [Longest Repeating Character Replacement (LeetCode 424)](https://leetcode.com/problems/longest-repeating-character-replacement/)             | 🟡 Medium  | Dynamic Window + Max Frequency Count       |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+424+Longest+Repeating+Character+Replacement+NeetCode)    |
|  6  | [Permutation in String (LeetCode 567)](https://leetcode.com/problems/permutation-in-string/)                                                 | 🟡 Medium  | Fixed Size Window + Hash Array Match       |            [Video Solution](https://www.youtube.com/results?search_query=LeetCode+567+Permutation+in+String+NeetCode)             |
|  7  | [Minimum Window Substring (LeetCode 76)](https://leetcode.com/problems/minimum-window-substring/)                                            |  🔴 Hard   | Dynamic Window + Character Frequency Match |           [Video Solution](https://www.youtube.com/results?search_query=LeetCode+76+Minimum+Window+Substring+NeetCode)            |
