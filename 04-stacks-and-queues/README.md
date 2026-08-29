# 📌 04. Stacks & Queues

Stacks and Queues are abstract linear container adaptors characterized by strict access constraints. They enforce controlled data entry and exit policies, serving as the execution foundation for system call stacks, parsing engines, graph traversals (DFS/BFS), and monotonic window optimizations.

---

## 🧠 Core Conceptual Breakdown

### 1. Stack (LIFO: Last-In, First-Out)

- Elements are inserted and extracted from a single terminal interface referred to as the `top`.
- **Primary Operations:** `push(x)` ($O(1)$), `pop()` ($O(1)$), `top()` / `peek()` ($O(1)$), `empty()` ($O(1)$).
- **Core Applications:** Compiler syntax parsing (balanced brackets), evaluating arithmetic expressions (Infix to Postfix/Prefix conversion), function recursion handling, and back-tracking states.

### 2. Queue (FIFO: First-In, First-Out)

- Elements enter at the `rear` (`tail`) and exit strictly from the `front` (`head`).
- **Primary Operations:** `enqueue(x)` ($O(1)$), `dequeue()` ($O(1)$), `front()` ($O(1)$).
- **Variations:**
  - **Circular Queue:** Uses modulo arithmetic on a fixed buffer to eliminate memory drift.
  - **Double-Ended Queue (Deque):** Allows $O(1)$ insertions and deletions at both terminal boundaries (`push_front`, `push_back`, `pop_front`, `pop_back`).

### 3. The Monotonic Stack / Queue Paradigm

- **Definition:** A stack whose internal elements maintain strict monotonicity (strictly increasing or strictly decreasing).
- **Utility:** Finds the **Next Greater Element**, **Previous Greater Element**, or **Next Smaller Element** for every item in an array in linear $O(N)$ aggregate time rather than quadratic $O(N^2)$ brute force. Every element enters and leaves the stack at most once.

---

## ⏱️ Complexity Profile

| Container                |    Insertion     |     Deletion     | Peek / Top | Space Complexity |
| :----------------------- | :--------------: | :--------------: | :--------: | :--------------: |
| **Stack (`std::stack`)** |      $O(1)$      |      $O(1)$      |   $O(1)$   |      $O(N)$      |
| **Queue (`std::queue`)** |      $O(1)$      |      $O(1)$      |   $O(1)$   |      $O(N)$      |
| **Deque (`std::deque`)** |      $O(1)$      |      $O(1)$      |   $O(1)$   |      $O(N)$      |
| **Monotonic Stack**      | $O(1)$ Amortized | $O(1)$ Amortized |   $O(1)$   |      $O(N)$      |

---

## 🎥 Curated Video Lectures

| Topic                                        | Primary Instructor     | Video / Playlist Link                                                                        |
| :------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Stacks & Queues Complete Masterclass**     | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma) |
| **Monotonic Stack Pattern Deep Dive**        | NeetCode               | [Watch on YouTube](https://www.youtube.com/watch?v=Dq_ObZwTY_Q)                              |
| **Queue Implementations & Circular Buffers** | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/watch?v=okr-XE8yTO8)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                            | Difficulty | Pattern Applied                     |                                                 Solution Walkthrough                                                  |
| :-: | :----------------------------------------------------------------------------------------------------------------- | :--------: | :---------------------------------- | :-------------------------------------------------------------------------------------------------------------------: |
|  1  | [Valid Parentheses (LeetCode 20)](https://leetcode.com/problems/valid-parentheses/)                                |  🟢 Easy   | Standard LIFO Matching              |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+20+Valid+Parentheses+NeetCode)         |
|  2  | [Implement Queue using Stacks (LeetCode 232)](https://leetcode.com/problems/implement-queue-using-stacks/)         |  🟢 Easy   | Dual-Stack Amortized Transfer       |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+232+Implement+Queue+using+Stacks+NeetCode)   |
|  3  | [Min Stack (LeetCode 155)](https://leetcode.com/problems/min-stack/)                                               | 🟡 Medium  | Auxiliary State / Value Encoding    |            [Video Solution](https://www.youtube.com/results?search_query=LeetCode+155+Min+Stack+NeetCode)             |
|  4  | [Daily Temperatures (LeetCode 739)](https://leetcode.com/problems/daily-temperatures/)                             | 🟡 Medium  | Monotonic Decreasing Stack          |        [Video Solution](https://www.youtube.com/results?search_query=LeetCode+739+Daily+Temperatures+NeetCode)        |
|  5  | [Evaluate Reverse Polish Notation (LeetCode 150)](https://leetcode.com/problems/evaluate-reverse-polish-notation/) | 🟡 Medium  | Postfix Stack Arithmetic            | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+150+Evaluate+Reverse+Polish+Notation+NeetCode) |
|  6  | [Largest Rectangle in Histogram (LeetCode 84)](https://leetcode.com/problems/largest-rectangle-in-histogram/)      |  🔴 Hard   | Monotonic Increasing Boundary Stack |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+84+Largest+Rectangle+in+Histogram+NeetCode)   |
|  7  | [Sliding Window Maximum (LeetCode 239)](https://leetcode.com/problems/sliding-window-maximum/)                     |  🔴 Hard   | Monotonic Decreasing Deque          |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+239+Sliding+Window+Maximum+NeetCode)      |
