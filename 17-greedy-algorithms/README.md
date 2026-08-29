# 📌 17. Greedy Algorithms

A Greedy Algorithm builds up a solution piece by piece, always choosing the next piece that offers the most immediate (local) benefit. Greedy algorithms succeed only when a problem exhibits both the **Greedy Choice Property** (globally optimal solutions can be reached via local choices) and **Optimal Substructure** (an optimal solution contains optimal sub-solutions).

---

## 🧠 Core Conceptual Breakdown

### 1. The Greedy Decision Paradigm

- Unlike Dynamic Programming, which exhaustively considers all subproblem states, Greedy algorithms commit to a choice without ever reconsidering past decisions.
- **Proving Greedy Correctness:**
  - _Proof by Contradiction:_ Assume an optimal solution differs from the greedy choice, then demonstrate that replacing the first differing element with the greedy choice results in an equal or better solution (Exchange Argument).

### 2. Standard Greedy Patterns

- **Interval Scheduling & Activity Selection:** Sort events by **finish time** ($\text{end}_i$) to maximize the count of mutually non-overlapping activities.
- **Fractional Knapsack:** Sort items by **value-to-weight ratio** ($v_i / w_i$) in descending order.
- **Gas Station & Circular Tours:** Running balance tracking; if total net gas is $\ge 0$, a unique starting point is guaranteed.
- **Huffman Coding:** Optimal prefix-free compression using a Min-Heap.

---

## ⏱️ Complexity Profile

| Pattern                                   | Time Complexity | Auxiliary Space | Key Technique                  |
| :---------------------------------------- | :-------------: | :-------------: | :----------------------------- |
| **Activity Selection / Interval Overlap** |  $O(N \log N)$  |     $O(1)$      | Sort by end-time / start-time  |
| **Fractional Knapsack**                   |  $O(N \log N)$  |     $O(1)$      | Sort by value/weight ratio     |
| **Gas Station Loop Tracking**             |     $O(N)$      |     $O(1)$      | Single pass cumulative balance |
| **Jump Game Verification**                |     $O(N)$      |     $O(1)$      | Tracking max reachable index   |

---

## 🎥 Curated Video Lectures

| Topic                                             | Primary Instructor     | Video / Playlist Link                                                                        |
| :------------------------------------------------ | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Greedy Algorithms Complete Playlist (A2Z DSA)** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma) |
| **Greedy Method Complete Theory & Proofs**        | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/playlist?list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O) |
| **Greedy Pattern Walkthroughs & Pitfalls**        | NeetCode               | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53lfQmTEztbg37FX6cs9LJWmn) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                              | Difficulty | Greedy Strategy                             |                                          Solution Walkthrough                                          |
| :-: | :----------------------------------------------------------------------------------- | :--------: | :------------------------------------------ | :----------------------------------------------------------------------------------------------------: |
|  1  | [Assign Cookies (LeetCode 455)](https://leetcode.com/problems/assign-cookies/)       |  🟢 Easy   | Two Pointers Sorted Greedy Match            |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+455+Assign+Cookies+Striver)   |
|  2  | [Jump Game (LeetCode 55)](https://leetcode.com/problems/jump-game/)                  | 🟡 Medium  | Maximum Reachable Boundary Tracking         |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+55+Jump+Game+NeetCode)      |
|  3  | [Jump Game II (LeetCode 45)](https://leetcode.com/problems/jump-game-ii/)            | 🟡 Medium  | BFS-style Greedy Range Window               |    [Video Solution](https://www.youtube.com/results?search_query=LeetCode+45+Jump+Game+II+NeetCode)    |
|  4  | [Gas Station (LeetCode 134)](https://leetcode.com/problems/gas-station/)             | 🟡 Medium  | Running Tank Surplus/Deficit Check          |    [Video Solution](https://www.youtube.com/results?search_query=LeetCode+134+Gas+Station+NeetCode)    |
|  5  | [Hand of Straights (LeetCode 846)](https://leetcode.com/problems/hand-of-straights/) | 🟡 Medium  | Min-Heap / Ordered Map Consecutive Grouping | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+846+Hand+of+Straights+NeetCode) |
|  6  | [Candy (LeetCode 135)](https://leetcode.com/problems/candy/)                         |  🔴 Hard   | Two-Pass (Left-to-Right & Right-to-Left)    |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+135+Candy+NeetCode)       |
