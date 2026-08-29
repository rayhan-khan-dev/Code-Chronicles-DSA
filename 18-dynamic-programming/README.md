# 📌 18. Dynamic Programming (DP)

Dynamic Programming solves complex optimization problems by breaking them down into overlapping subproblems, solving each subproblem once, and storing the results to eliminate redundant computation.

---

## 🧠 Core Conceptual Breakdown

### 1. Prerequisites for Dynamic Programming

- **Optimal Substructure:** An optimal solution to the problem contains within it optimal solutions to subproblems.
- **Overlapping Subproblems:** The same subproblems are solved repeatedly in a naive recursive call tree (e.g., standard Fibonacci computing $F(n-2)$ multiple times).

### 2. Approaches: Top-Down vs. Bottom-Up

- **Top-Down (Memoization):**
  - Starts at the original problem and recursively breaks it down.
  - Caches results in a table/hash map as base cases return.
  - _Pros:_ Only computes states that are strictly needed.
- **Bottom-Up (Tabulation):**
  - Starts at the base cases and iteratively builds solutions using loops.
  - _Pros:_ Eliminates recursion call stack overhead and enables **Space Optimization** (e.g., reducing $O(N)$ space to $O(1)$ by keeping only the previous 2 states).

### 3. Classic DP Classifications & State Transitions

#### A. 1D / Linear DP (e.g., Climbing Stairs, House Robber)

- State: `dp[i]` represents answer for prefix up to index $i$.
- Transition: `dp[i] = max(dp[i-1], dp[i-2] + nums[i])`.

#### B. 0/1 Knapsack & Unbounded Knapsack

- State: `dp[i][w]` represents max value using items $1 \dots i$ with capacity $w$.
- **0/1 Knapsack (Item used at most once):**
  `dp[i][w] = max(dp[i-1][w], dp[i-1][w - wt[i]] + val[i])`
- **Unbounded Knapsack (Item reused infinitely):**
  `dp[i][w] = max(dp[i-1][w], dp[i][w - wt[i]] + val[i])`

#### C. Longest Common Subsequence (LCS) & String DP

- State: `dp[i][j]` = length of LCS of $S_1[0 \dots i-1]$ and $S_2[0 \dots j-1]$.
- Transition:
  $$\text{If } S_1[i-1] == S_2[j-1]: \quad \text{dp}[i][j] = 1 + \text{dp}[i-1][j-1]$$
  $$\text{Else}: \quad \text{dp}[i][j] = \max(\text{dp}[i-1][j], \text{dp}[i][j-1])$$

#### D. Matrix / Grid DP (e.g., Unique Paths, Min Path Sum)

- State: `dp[r][c]` = optimal cost to reach cell `(r, c)`.
- Transition: `dp[r][c] = cost[r][c] + min(dp[r-1][c], dp[r][c-1])`.

---

## 🎥 Curated Video Lectures

| Topic                                         | Primary Instructor     | Video / Playlist Link                                                                        |
| :-------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Dynamic Programming Masterclass (A2Z DSA)** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0qUlt5H_kiKGl20_cU8hULP) |
| **Dynamic Programming Pattern Playbook**      | NeetCode               | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53lcvx_7JBWcqNI302dP9Dr41) |
| **DP Series: Knapsack, LCS, Matrix Chain**    | Aditya Verma           | [Watch on YouTube](https://www.youtube.com/playlist?list=PL_z_8CaSLPWekqhdCPmFohncHwz8TY2Go) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                        | Difficulty | DP Paradigm                                                       |                                                Solution Walkthrough                                                 |
| :-: | :------------------------------------------------------------------------------------------------------------- | :--------: | :---------------------------------------------------------------- | :-----------------------------------------------------------------------------------------------------------------: |
|  1  | [Climbing Stairs (LeetCode 70)](https://leetcode.com/problems/climbing-stairs/)                                |  🟢 Easy   | 1D Fibonacci State Transition                                     |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+70+Climbing+Stairs+NeetCode)         |
|  2  | [Coin Change (LeetCode 322)](https://leetcode.com/problems/coin-change/)                                       | 🟡 Medium  | Unbounded Knapsack / Fewest Coins                                 |          [Video Solution](https://www.youtube.com/results?search_query=LeetCode+322+Coin+Change+NeetCode)           |
|  3  | [Longest Increasing Subsequence (LeetCode 300)](https://leetcode.com/problems/longest-increasing-subsequence/) | 🟡 Medium  | 1D DP ($O(N^2)$) / Binary Search Patience Sorting ($O(N \log N)$) | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+300+Longest+Increasing+Subsequence+NeetCode) |
|  4  | [Longest Common Subsequence (LeetCode 1143)](https://leetcode.com/problems/longest-common-subsequence/)        | 🟡 Medium  | 2D String Matching Matrix                                         |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1143+Longest+Common+Subsequence+NeetCode)   |
|  5  | [Unique Paths (LeetCode 62)](https://leetcode.com/problems/unique-paths/)                                      | 🟡 Medium  | 2D Grid Traversal / Combinatorics                                 |          [Video Solution](https://www.youtube.com/results?search_query=LeetCode+62+Unique+Paths+NeetCode)           |
|  6  | [Edit Distance (LeetCode 72)](https://leetcode.com/problems/edit-distance/)                                    | 🟡 Medium  | 2D String Transformation DP                                       |          [Video Solution](https://www.youtube.com/results?search_query=LeetCode+72+Edit+Distance+NeetCode)          |
|  7  | [Burst Balloons (LeetCode 312)](https://leetcode.com/problems/burst-balloons/)                                 |  🔴 Hard   | Matrix Chain Multiplication (MCM) Interval DP                     |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+312+Burst+Balloons+NeetCode)         |
