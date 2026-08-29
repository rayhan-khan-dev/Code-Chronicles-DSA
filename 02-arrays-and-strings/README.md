# 📌 02. Arrays & Strings

Arrays and Strings represent the primary contiguous data structures in computer science. They optimize CPU cache locality because sequential memory addresses are prefetched automatically into L1/L2 cache lines, minimizing access latency.

---

## 🧠 Core Conceptual Breakdown

### 1. Static vs. Dynamic Arrays

- **Static Arrays:** Fixed-size allocations assigned during stack compilation. Memory address resolution for index $i$:
  $$\text{Address}(A[i]) = \text{Base Address} + (i \times \text{Size of Data Type})$$
  Because calculation uses simple multiplication, index access executes in strictly $O(1)$ time.
- **Dynamic Arrays (`std::vector` in C++, `list` in Python):** Heap-allocated resizable buffers.
  - **Amortized Analysis:** When the array reaches capacity, it allocates a new buffer of size $2 \times N$, copies $N$ elements, and deallocates old memory. Copying takes $O(N)$ once, but occurs so infrequently that insertion remains $O(1)$ amortized over $k$ inserts.

### 2. String Memory Internals

- **C-style Strings:** Null-terminated (`\0`) continuous character arrays. Length queries require $O(N)$ traversal.
- **C++ `std::string`:** Maintains explicit size and pointer properties. Small String Optimization (SSO) avoids heap allocations for short strings (<16 bytes).
- **Python Strings:** Strictly immutable. Concatenation inside loops (`s += char`) creates a completely new string object on each iteration, causing $O(N^2)$ overall runtime. Use `"".join(list)` for $O(N)$ linear building.

### 3. Core Structural Techniques

- **Prefix Sum Arrays:** Pre-computing cumulative sums allows any range sum query between index $L$ and $R$ to execute in $O(1)$ time:
  $$\text{Sum}(L, R) = \text{Prefix}[R] - \text{Prefix}[L - 1]$$
- **Kadane's Algorithm:** Computes the maximum contiguous subarray sum in $O(N)$ time by discarding negative running sums:
  $$\text{current\_max} = \max(A[i], \text{current\_max} + A[i])$$
- **Dutch National Flag Algorithm:** Partitions a 3-way distribution (e.g., sorting 0s, 1s, and 2s) in a single pass using three boundary pointers (`low`, `mid`, `high`).

---

## ⏱️ Operation Complexity Matrix

| Operation                     | Array (Static) | Dynamic Array (Vector) | String (`std::string`) |
| :---------------------------- | :------------: | :--------------------: | :--------------------: |
| **Random Access**             |     $O(1)$     |         $O(1)$         |         $O(1)$         |
| **Insert / Delete at End**    |      N/A       |    $O(1)$ Amortized    |    $O(1)$ Amortized    |
| **Insert / Delete at Middle** |     $O(N)$     |         $O(N)$         |         $O(N)$         |
| **Search (Unsorted)**         |     $O(N)$     |         $O(N)$         |         $O(N)$         |
| **Search (Sorted)**           |  $O(\log N)$   |      $O(\log N)$       |      $O(\log N)$       |

---

## 🎥 Curated Video Lectures

| Topic                                             | Primary Instructor     | Video / Playlist Link                                                                            |
| :------------------------------------------------ | :--------------------- | :----------------------------------------------------------------------------------------------- |
| **Arrays Masterclass & Interview Roadmap**        | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0rENwdL0nEH0uGom9no0nyB)     |
| **Arrays & Hashing Complete Pattern Walkthrough** | NeetCode               | [Watch on YouTube](https://www.youtube.com/watch?v=KLlXCFG5TnA)                                  |
| **Kadane's Algorithm & Subarray Intuition**       | Abdul Bari / Striver   | [Watch on YouTube](https://www.youtube.com/results?search_query=Kadane%27s+Algorithm+Abdul+Bari) |
| **String Manipulation & Matching Techniques**     | William Fiset          | [Watch on YouTube](https://www.youtube.com/watch?v=V5-7GzOfADQ)                                  |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                        | Difficulty | Strategy / Pattern                      |                                                 Solution Walkthrough                                                 |
| :-: | :------------------------------------------------------------------------------------------------------------- | :--------: | :-------------------------------------- | :------------------------------------------------------------------------------------------------------------------: |
|  1  | [Two Sum (LeetCode 1)](https://leetcode.com/problems/two-sum/)                                                 |  🟢 Easy   | Hash Map Complement Lookup              |              [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1+Two+Sum+NeetCode)              |
|  2  | [Best Time to Buy & Sell Stock (LeetCode 121)](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/) |  🟢 Easy   | Running Minimum Value Tracking          | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+121+Best+Time+to+Buy+and+Sell+Stock+NeetCode) |
|  3  | [Valid Anagram (LeetCode 242)](https://leetcode.com/problems/valid-anagram/)                                   |  🟢 Easy   | Frequency Array / Character Count       |          [Video Solution](https://www.youtube.com/results?search_query=LeetCode+242+Valid+Anagram+NeetCode)          |
|  4  | [Maximum Subarray (LeetCode 53)](https://leetcode.com/problems/maximum-subarray/)                              | 🟡 Medium  | Kadane's Algorithm ($O(N)$)             |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+53+Maximum+Subarray+Striver)          |
|  5  | [Product of Array Except Self (LeetCode 238)](https://leetcode.com/problems/product-of-array-except-self/)     | 🟡 Medium  | Prefix & Suffix Products ($O(1)$ Space) |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+238+Product+of+Array+Except+Self+NeetCode)   |
|  6  | [Sort Colors / 0,1,2 (LeetCode 75)](https://leetcode.com/problems/sort-colors/)                                | 🟡 Medium  | Dutch National Flag Algorithm           |            [Video Solution](https://www.youtube.com/results?search_query=LeetCode+75+Sort+Colors+Striver)            |
|  7  | [Longest Consecutive Sequence (LeetCode 128)](https://leetcode.com/problems/longest-consecutive-sequence/)     | 🟡 Medium  | Hash Set Boundary Check                 |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+128+Longest+Consecutive+Sequence+NeetCode)   |
|  8  | [Trapping Rain Water (LeetCode 42)](https://leetcode.com/problems/trapping-rain-water/)                        |  🔴 Hard   | Two Pointers Maximum Tracking           |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+42+Trapping+Rain+Water+NeetCode)        |
