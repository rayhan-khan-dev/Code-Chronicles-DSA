# 📌 07. Sorting Algorithms

Sorting arranges elements in a specified monotonic order (ascending or descending). It serves as a preprocessing step that reduces subsequent search and query complexities from $O(N)$ to $O(\log N)$ or $O(1)$. Understanding internal sorting mechanics is essential for choosing between stability, space efficiency, and computational complexity.

---

## 🧠 Core Conceptual Breakdown

### 1. Classification & Properties

- **Stability:** A sorting algorithm is **stable** if it preserves the relative order of records with equal keys. (e.g., Merge Sort is stable; Quick Sort and Heap Sort are inherently unstable).
- **In-Place Sorting:** An algorithm is **in-place** if it requires $O(1)$ auxiliary memory beyond the input array (e.g., Quick Sort requires $O(\log N)$ stack space, while Heap Sort is strictly $O(1)$ auxiliary space).
- **Comparison vs. Non-Comparison Sorts:**
  - _Comparison Sorts:_ Lower bound proof demonstrates a theoretical minimum time complexity of $\Omega(N \log N)$.
  - _Non-Comparison Sorts (Counting, Radix, Bucket):_ Exploit numerical key constraints to achieve linear $O(N + K)$ runtime.

### 2. Core Sorting Paradigms

- **Merge Sort (Divide and Conquer):**
  - Recursively splits array into halves ($O(\log N)$ levels) and merges two sorted sub-arrays in linear $O(N)$ time.
  - Guaranteed $O(N \log N)$ worst-case runtime; requires $O(N)$ auxiliary buffer space.
- **Quick Sort (Partitioning):**
  - Selects a `pivot` element and partitions the array such that all elements $< \text{pivot}$ are on the left and $> \text{pivot}$ are on the right (Lomuto or Hoare partitioning).
  - Average Case: $O(N \log N)$; Worst Case: $O(N^2)$ (mitigated using Randomized Pivot selection or IntroSort).
- **Counting Sort & Radix Sort:**
  - _Counting Sort:_ Computes prefix frequencies over a bounded range $[0, K]$. Runs in $O(N + K)$ time.
  - _Radix Sort:_ Sorts integers digit by digit from least significant bit (LSB) to most significant bit (MSB) using Counting Sort as a stable subroutine.

---

## ⏱️ Complexity & Stability Matrix

| Algorithm          |   Best Case   | Average Case  |  Worst Case   | Space Complexity | Stability |
| :----------------- | :-----------: | :-----------: | :-----------: | :--------------: | :-------: |
| **Bubble Sort**    |    $O(N)$     |   $O(N^2)$    |   $O(N^2)$    |      $O(1)$      |    Yes    |
| **Selection Sort** |   $O(N^2)$    |   $O(N^2)$    |   $O(N^2)$    |      $O(1)$      |    No     |
| **Insertion Sort** |    $O(N)$     |   $O(N^2)$    |   $O(N^2)$    |      $O(1)$      |    Yes    |
| **Merge Sort**     | $O(N \log N)$ | $O(N \log N)$ | $O(N \log N)$ |      $O(N)$      |    Yes    |
| **Quick Sort**     | $O(N \log N)$ | $O(N \log N)$ |   $O(N^2)$    |   $O(\log N)$    |    No     |
| **Heap Sort**      | $O(N \log N)$ | $O(N \log N)$ | $O(N \log N)$ |      $O(1)$      |    No     |
| **Counting Sort**  |  $O(N + K)$   |  $O(N + K)$   |  $O(N + K)$   |      $O(K)$      |    Yes    |

---

## 🎥 Curated Video Lectures

| Topic                                                    | Primary Instructor     | Video / Playlist Link                                                                        |
| :------------------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Sorting Algorithms Mastery (Merge, Quick, Insertion)** | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/playlist?list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O) |
| **Complete Sorting Techniques (A2Z DSA)**                | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0rENwdL0nEH0uGom9no0nyB) |
| **Non-Comparison Linear Sorting (Counting & Radix)**     | MIT OpenCourseWare     | [Watch on YouTube](https://www.youtube.com/watch?v=Nz1KZXbghj8)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                              | Difficulty | Core Technique                        |                                              Solution Walkthrough                                              |
| :-: | :--------------------------------------------------------------------------------------------------- | :--------: | :------------------------------------ | :------------------------------------------------------------------------------------------------------------: |
|  1  | [Sort an Array (LeetCode 912)](https://leetcode.com/problems/sort-an-array/)                         | 🟡 Medium  | Merge Sort / Randomized Quick Sort    |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+912+Sort+an+Array+NeetCode)       |
|  2  | [Merge Intervals (LeetCode 56)](https://leetcode.com/problems/merge-intervals/)                      | 🟡 Medium  | Coordinate Sorting + Interval Merging |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+56+Merge+Intervals+NeetCode)       |
|  3  | [Non-overlapping Intervals (LeetCode 435)](https://leetcode.com/problems/non-overlapping-intervals/) | 🟡 Medium  | Greedy End-Time Sorting               | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+435+Non-overlapping+Intervals+NeetCode) |
|  4  | [Largest Number (LeetCode 179)](https://leetcode.com/problems/largest-number/)                       | 🟡 Medium  | Custom Comparator Sorting             |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+179+Largest+Number+NeetCode)       |
|  5  | [Maximum Gap (LeetCode 164)](https://leetcode.com/problems/maximum-gap/)                             |  🔴 Hard   | Bucket Sort / Pigeonhole Principle    |        [Video Solution](https://www.youtube.com/results?search_query=LeetCode+164+Maximum+Gap+Solution)        |
