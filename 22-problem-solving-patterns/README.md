# 📌 22. Coding Interview Problem-Solving Patterns

Rather than memorizing hundreds of discrete problem solutions, master the underlying core patterns. Every coding interview problem maps directly to one or a combination of these algorithmic templates.

---

## 🧠 Core Pattern Index

```text
Problem Statement
    │
    ├── Array / String target pair or window? ────► [1. Two Pointers / Sliding Window]
    ├── Searching in sorted space / min-max?  ────► [2. Binary Search on Answer]
    ├── Next greater / monotonic boundary?    ────► [3. Monotonic Stack / Queue]
    ├── Top / Bottom K items or streaming?    ────► [4. Top-K via Heaps / Min-Max Heap]
    ├── Overlapping intervals / scheduling?   ────► [5. Merge Intervals (Sort by Time)]
    ├── Linked list cycles / midpoint?        ────► [6. Fast & Slow Pointers (Floyd's)]
    ├── Combinations / Permutations / Grid?   ────► [7. Backtracking / DFS State Space]
    ├── Level-by-level / Shortest unweighted? ────► [8. BFS / Multisource Queue]
    ├── Overlapping subproblems & choices?    ────► [9. Dynamic Programming]
    └── Disjoint connectivity / components?   ────► [10. Union-Find / DSU]
```

---

## 📋 The 14 Essential Pattern Playbook

### 1. Two Pointers

- **Indicators:** Sorted arrays, searching pairs, checking palindromes, partitioning in-place.
- **Key Problems:** _Two Sum II, 3Sum, Container With Most Water, Trapping Rain Water._

### 2. Sliding Window (Fixed & Dynamic)

- **Indicators:** Subarrays, contiguous substrings, min/max length satisfying a condition.
- **Key Problems:** _Minimum Window Substring, Longest Substring Without Repeating Characters._

### 3. Fast & Slow Pointers (Hare & Tortoise)

- **Indicators:** Linked list loops, finding midpoints, cyclic arrays, happy numbers.
- **Key Problems:** _Linked List Cycle, Find the Duplicate Number, Middle of the Linked List._

### 4. Merge Intervals

- **Indicators:** Overlapping time intervals, meeting room scheduling, range merging.
- **Key Problems:** _Merge Intervals, Insert Interval, Non-overlapping Intervals._

### 5. Cyclic Sort

- **Indicators:** Array contains numbers in a bounded range $[1 \dots N]$ or $[0 \dots N]$ with missing/duplicate values.
- **Key Problems:** _Missing Number, Find All Duplicates in an Array, First Missing Positive._

### 6. In-Place Reversal of a Linked List

- **Indicators:** Reverse sub-lists without allocating additional memory nodes.
- **Key Problems:** _Reverse Linked List, Reverse Nodes in k-Group._

### 7. Monotonic Stack

- **Indicators:** Next greater element, histogram areas, span finding in linear time.
- **Key Problems:** _Daily Temperatures, Largest Rectangle in Histogram, Next Greater Element._

### 8. Top-K Elements

- **Indicators:** Find the $K$ largest, smallest, or most frequent items.
- **Key Problems:** _Kth Largest Element in an Array, Top K Frequent Elements._

### 9. Two Heaps (Median Finding)

- **Indicators:** Maintain running dynamic medians from streaming data.
- **Key Problems:** _Find Median from Data Stream, Sliding Window Median._

### 10. Subsets & Backtracking

- **Indicators:** Permutations, combinations, generating all subsets (Power Set).
- **Key Problems:** _Subsets, Permutations, Combination Sum, N-Queens._

### 11. Modified Binary Search

- **Indicators:** Rotated sorted arrays, unknown array lengths, search in 2D sorted matrices.
- **Key Problems:** _Search in Rotated Sorted Array, Find Peak Element._

### 12. TopoSort (Kahn's Algorithm)

- **Indicators:** Prerequisites, build orders, topological dependencies in DAGs.
- **Key Problems:** _Course Schedule, Alien Dictionary._

### 13. 0/1 & Unbounded Knapsack DP

- **Indicators:** Optimization with constraints (weight/value), target sum subsets.
- **Key Problems:** _Partition Equal Subset Sum, Coin Change, Target Sum._

### 14. Matrix Traversal (Grid BFS/DFS)

- **Indicators:** Connected islands, shortest path in maze, flood fills.
- **Key Problems:** _Number of Islands, Rotting Oranges, Pacific Atlantic Water Flow._

---

## 🎥 Curated Video Lectures

| Topic                                          | Primary Instructor     | Video / Playlist Link                                           |
| :--------------------------------------------- | :--------------------- | :-------------------------------------------------------------- |
| **14 Coding Interview Patterns Playbook**      | NeetCode               | [Watch on YouTube](https://www.youtube.com/watch?v=DjYZk8nrXVY) |
| **Mastering DSA Patterns for Tech Interviews** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/watch?v=0bHoB32fuj0) |
