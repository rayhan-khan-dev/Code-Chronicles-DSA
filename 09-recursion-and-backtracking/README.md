# 📌 09. Recursion & Backtracking

Recursion solves a problem by expressing its solution in terms of smaller instances of the same problem. Backtracking extends recursion to systematically construct candidates for solutions and abandon ("backtrack" by undoing state changes) a candidate path as soon as it determines the candidate cannot lead to a valid configuration.

---

## 🧠 Core Conceptual Breakdown

### 1. Recursion Mechanics & The Call Stack

- **Structure of Recursive Functions:**
  - **Base Case:** Halting condition that terminates recursion without additional calls.
  - **Recursive Relation / Hypothesis:** Transition reducing the problem space closer to the base case.
  - **Induction Step:** Combining recursive returns to form the current frame solution.
- **Call Stack Space:** Each nested invocation allocates a stack frame storing parameters, local variables, and the return instruction address (O(recursion depth) auxiliary space).

### 2. Backtracking Template & State Management

Backtracking operates as an exhaustive Depth-First Search over a conceptual Decision Tree:

```text
void backtrack(State, Choices):
    if is_valid_solution(State):
        record_solution(State)
        return

    for choice in Choices:
        if is_valid_choice(choice, State):
            apply_choice(State, choice)       // 1. Choose (Mutate State)
            backtrack(State, Choices)         // 2. Explore (Recursive Step)
            revert_choice(State, choice)      // 3. Unchoose (Backtrack State)
```

### 3. Pruning & Branch-and-Bound

- **Pruning:** Inserting conditional assertions prior to recurring to eliminate subtrees that cannot yield valid solutions. This reduces worst-case exponential time O(2^N) or O(N!) to manageable execution bounds.

---

## 🎥 Curated Video Lectures

| Topic                                           | Primary Instructor     | Video / Playlist Link                                                                        |
| :---------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Recursion & Backtracking Playlist (A2Z DSA)** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0rGlzInbqfuOKSi-9d_Cddp) |
| **Backtracking Masterclass & Decision Trees**   | NeetCode               | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53lf5C3HSjCnyFghlW0G1QKXo) |
| **Recursion Theory & Call Stack Visualization** | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/playlist?list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                          | Difficulty | Sub-Pattern                        |                                             Solution Walkthrough                                             |
| :-: | :----------------------------------------------------------------------------------------------- | :--------: | :--------------------------------- | :----------------------------------------------------------------------------------------------------------: |
|  1  | [Subsets (LeetCode 78)](https://leetcode.com/problems/subsets/)                                  | 🟡 Medium  | Pick / Don't Pick (Power Set)      |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+78+Subsets+NeetCode)          |
|  2  | [Combination Sum (LeetCode 39)](https://leetcode.com/problems/combination-sum/)                  | 🟡 Medium  | Unbounded Element Reuse            |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+39+Combination+Sum+NeetCode)      |
|  3  | [Permutations (LeetCode 46)](https://leetcode.com/problems/permutations/)                        | 🟡 Medium  | Element Swapping / Visited Set     |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+46+Permutations+NeetCode)       |
|  4  | [Word Search (LeetCode 79)](https://leetcode.com/problems/word-search/)                          | 🟡 Medium  | 2D Grid DFS State Backtracking     |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+79+Word+Search+NeetCode)        |
|  5  | [Palindrome Partitioning (LeetCode 131)](https://leetcode.com/problems/palindrome-partitioning/) | 🟡 Medium  | Substring Partitioning + DP Check  | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+131+Palindrome+Partitioning+NeetCode) |
|  6  | [N-Queens (LeetCode 51)](https://leetcode.com/problems/n-queens/)                                |  🔴 Hard   | Column & Diagonal Bit/Hash Pruning |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+51+N-Queens+NeetCode)         |
|  7  | [Sudoku Solver (LeetCode 37)](https://leetcode.com/problems/sudoku-solver/)                      |  🔴 Hard   | Grid Constraint Propagation        |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+37+Sudoku+Solver+Striver)       |
