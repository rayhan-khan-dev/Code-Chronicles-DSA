# 📌 20. Advanced Data Structures

Advanced data structures handle complex interval queries, point/range updates, multidimensional aggregations, and tree-path modifications in sub-linear logarithmic time $O(\log N)$.

---

## 🧠 Core Conceptual Breakdown

### 1. Segment Tree

- A full binary tree where each leaf node represents a single array element and internal nodes represent range aggregations (Sum, Min, Max, GCD).
- **Tree Size in Memory:** For array of size $N$, allocate $4N$ memory elements.
- **Operations:**
  - Build: $O(N)$
  - Point Update ($A[i] = v$): $O(\log N)$
  - Range Query ($[L, R]$): $O(\log N)$

### 2. Lazy Propagation (Segment Tree Range Updates)

- Normal segment trees require $O(N \log N)$ to update an entire range $[L, R]$.
- **Lazy Propagation:** Postpones updates to children nodes until those nodes are explicitly queried. Stores unapplied updates in a `lazy[]` array.
- **Complexity:** Range Update in $O(\log N)$, Range Query in $O(\log N)$.

### 3. Fenwick Tree / Binary Indexed Tree (BIT)

- Uses bitwise properties of the Least Significant Bit (`LSB = x & (-x)`) to represent prefix sums compactly.
- **Space:** $O(N)$ (half the memory of Segment Tree, flat array structure, cache friendly).
- **Operations:** Point Update in $O(\log N)$, Prefix Sum Query in $O(\log N)$, Range Query via `query(R) - query(L - 1)`.

### 4. Sparse Table

- Static range query data structure based on powers of two (Binary Lifting).
- **Preprocessing:** $O(N \log N)$ using DP:
  $$\text{table}[i][j] = \min(\text{table}[i][j-1], \text{table}[i + 2^{j-1}][j-1])$$
- **Range Minimum / Maximum Query (Idempotent operations):** Strictly $O(1)$ time per query!
  $$\text{Query}(L, R) = \min(\text{table}[L][k], \text{table}[R - 2^k + 1][k]) \quad \text{where } k = \lfloor\log_2(R - L + 1)\rfloor$$

---

## ⏱️ Structure Selection Guide

| Data Structure          |  Build Time   |     Range Query     | Point Update |       Range Update       | Memory Overhead |
| :---------------------- | :-----------: | :-----------------: | :----------: | :----------------------: | :-------------: |
| **Prefix Sum Array**    |    $O(N)$     |       $O(1)$        |    $O(N)$    |          $O(N)$          |     $O(N)$      |
| **Sparse Table**        | $O(N \log N)$ | $O(1)$ (Idempotent) | N/A (Static) |           N/A            |  $O(N \log N)$  |
| **Fenwick Tree (BIT)**  |    $O(N)$     |     $O(\log N)$     | $O(\log N)$  | $O(\log N)$ (with delta) |     $O(N)$      |
| **Segment Tree**        |    $O(N)$     |     $O(\log N)$     | $O(\log N)$  |          $O(N)$          |      $4N$       |
| **Segment Tree + Lazy** |    $O(N)$     |     $O(\log N)$     | $O(\log N)$  |       $O(\log N)$        |      $8N$       |

---

## 🎥 Curated Video Lectures

| Topic                                           | Primary Instructor                 | Video / Playlist Link                                                                        |
| :---------------------------------------------- | :--------------------------------- | :------------------------------------------------------------------------------------------- |
| **Segment Tree & Lazy Propagation Masterclass** | Striver (takeUforward)             | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0o8Hkd7bK2Bpryj2xVJk8Vk) |
| **Binary Indexed Tree (Fenwick Tree) In-Depth** | William Fiset                      | [Watch on YouTube](https://www.youtube.com/watch?v=RgITNht_f4Q)                              |
| **Sparse Table Tutorial & Range Queries**       | Errichto (Competitive Programming) | [Watch on YouTube](https://www.youtube.com/watch?v=0jWeUdxrGm4)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                  | Difficulty | Structure Used                                |                                              Solution Walkthrough                                               |
| :-: | :----------------------------------------------------------------------------------------------------------------------- | :--------: | :-------------------------------------------- | :-------------------------------------------------------------------------------------------------------------: |
|  1  | [Range Sum Query - Mutable (LeetCode 307)](https://leetcode.com/problems/range-sum-query-mutable/)                       | 🟡 Medium  | Segment Tree / Fenwick Tree                   |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+307+Range+Sum+Query+Mutable+NeetCode)   |
|  2  | [Count of Smaller Numbers After Self (LeetCode 315)](https://leetcode.com/problems/count-of-smaller-numbers-after-self/) |  🔴 Hard   | Coordinate Compression + Fenwick/Segment Tree | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+315+Count+of+Smaller+Numbers+After+Self) |
|  3  | [Range Module (LeetCode 715)](https://leetcode.com/problems/range-module/)                                               |  🔴 Hard   | Segment Tree with Lazy Propagation            |        [Video Solution](https://www.youtube.com/results?search_query=LeetCode+715+Range+Module+Solution)        |
|  4  | [Falling Squares (LeetCode 699)](https://leetcode.com/problems/falling-squares/)                                         |  🔴 Hard   | Dynamic Segment Tree + Coordinate Compression |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+699+Falling+Squares+Solution)       |
