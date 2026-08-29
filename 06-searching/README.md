# 📌 06. Searching Algorithms

Searching forms the basis of programmatic data retrieval. While brute-force linear search evaluates items sequentially in $O(N)$, Binary Search reduces the search space by half on each step, running in $O(\log N)$. Beyond raw arrays, binary search generalizes as a problem-solving pattern known as **Binary Search on Answer**.

---

## 🧠 Core Conceptual Breakdown

### 1. Classical Binary Search Mechanics

- **Pre-condition:** The dataset must maintain monotonic order (sorted sequence or boolean predicate).
- **Search Space Reduction:** At each iteration, calculate midpoint $M$. If target is smaller than $A[M]$, discard the right half; otherwise, discard the left half.
- **Midpoint Overflow Prevention:**
  $$\text{mid} = \text{low} + \left\lfloor\frac{\text{high} - \text{low}}{2}\right\rfloor \quad \text{instead of } \frac{\text{low} + \text{high}}{2}$$

### 2. Lower Bound vs. Upper Bound

- **Lower Bound (`std::lower_bound`):** Returns the first index where $A[\text{index}] \ge \text{target}$.
- **Upper Bound (`std::upper_bound`):** Returns the first index where $A[\text{index}] > \text{target}$.

### 3. Binary Search on Answer (Monotonic Predicates)

- If a problem asks to **"find the minimum of the maximum"** or **"maximum of the minimum"**, it often maps to binary search on answer spaces.
- **Pattern:** Construct a monotonic validation function `isValid(mid)` that returns `true` or `false` in $O(N)$ time:
  $$\text{Search Space: } [\text{Low Answer Boundary}, \text{High Answer Boundary}]$$
  $$\text{Predicate Output: } [\text{true}, \text{true}, \dots, \text{true}, \text{false}, \text{false}, \dots]$$
  Binary search isolates the inflection boundary in $O(N \log(\text{Range}))$ time.

---

## ⏱️ Complexity Profile

| Algorithm          | Best Case | Average Case  |  Worst Case   | Space Complexity |
| :----------------- | :-------: | :-----------: | :-----------: | :--------------: |
| **Linear Search**  |  $O(1)$   |    $O(N)$     |    $O(N)$     |      $O(1)$      |
| **Binary Search**  |  $O(1)$   |  $O(\log N)$  |  $O(\log N)$  | $O(1)$ Iterative |
| **Ternary Search** |  $O(1)$   | $O(\log_3 N)$ | $O(\log_3 N)$ |      $O(1)$      |

---

## 🎥 Curated Video Lectures

| Topic                                    | Primary Instructor                 | Video / Playlist Link                                                                        |
| :--------------------------------------- | :--------------------------------- | :------------------------------------------------------------------------------------------- |
| **Binary Search Complete A2Z Roadmap**   | Striver (takeUforward)             | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0pMFMWuuvDNMAkoQFi-h0ZF) |
| **Binary Search Intuition & Edge Cases** | NeetCode                           | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53leNZQitcqBIWT326l53-VDb) |
| **Binary Search on Answer Spaces**       | Errichto (Competitive Programming) | [Watch on YouTube](https://www.youtube.com/watch?v=GU7DpgHINWQ)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                           | Difficulty | Search Pattern Applied          |                                                   Solution Walkthrough                                                    |
| :-: | :-------------------------------------------------------------------------------------------------------------------------------- | :--------: | :------------------------------ | :-----------------------------------------------------------------------------------------------------------------------: |
|  1  | [Binary Search (LeetCode 704)](https://leetcode.com/problems/binary-search/)                                                      |  🟢 Easy   | Standard Iterative Framework    |            [Video Solution](https://www.youtube.com/results?search_query=LeetCode+704+Binary+Search+NeetCode)             |
|  2  | [Search a 2D Matrix (LeetCode 74)](https://leetcode.com/problems/search-a-2d-matrix/)                                             | 🟡 Medium  | 2D Index Flattening to 1D       |          [Video Solution](https://www.youtube.com/results?search_query=LeetCode+74+Search+a+2D+Matrix+NeetCode)           |
|  3  | [Find Minimum in Rotated Sorted Array (LeetCode 153)](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/)        | 🟡 Medium  | Inflection Point Detection      | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+153+Find+Minimum+in+Rotated+Sorted+Array+NeetCode) |
|  4  | [Search in Rotated Sorted Array (LeetCode 33)](https://leetcode.com/problems/search-in-rotated-sorted-array/)                     | 🟡 Medium  | Half-Sorted Subarray Evaluation |    [Video Solution](https://www.youtube.com/results?search_query=LeetCode+33+Search+in+Rotated+Sorted+Array+NeetCode)     |
|  5  | [Koko Eating Bananas (LeetCode 875)](https://leetcode.com/problems/koko-eating-bananas/)                                          | 🟡 Medium  | Binary Search on Rate Answer    |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+875+Koko+Eating+Bananas+NeetCode)          |
|  6  | [Capacity To Ship Packages Within D Days (LeetCode 1011)](https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/) | 🟡 Medium  | Monotonic Capacity Allocation   |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1011+Capacity+To+Ship+Packages+Striver)       |
|  7  | [Median of Two Sorted Arrays (LeetCode 4)](https://leetcode.com/problems/median-of-two-sorted-arrays/)                            |  🔴 Hard   | Optimal Partition Binary Search |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+4+Median+of+Two+Sorted+Arrays+NeetCode)       |
