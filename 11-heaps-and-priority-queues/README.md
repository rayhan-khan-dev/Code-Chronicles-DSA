# 📌 11. Heaps & Priority Queues

A Heap is a specialized tree-based data structure that satisfies the complete binary tree structural property alongside the Heap Invariant. It serves as the primary implementation engine for Priority Queues, graph search algorithms (Dijkstra, Prim), and streaming Top-K order calculations.

---

## 🧠 Core Conceptual Breakdown

### 1. Array Representation of Complete Binary Trees

Because heaps are structurally complete (every level completely filled except possibly the last, which is filled from left to right), they are stored in continuous flat arrays without pointer overhead:

- For a node located at 0-indexed position $i$:
  $$\text{Parent Index} = \left\lfloor\frac{i - 1}{2}\right\rfloor$$
  $$\text{Left Child Index} = 2i + 1$$
  $$\text{Right Child Index} = 2i + 2$$

### 2. Heap Invariant Properties

- **Max-Heap:** The value of every parent node is $\ge$ the values of its child nodes ($\text{Root} = \text{Maximum value}$).
- **Min-Heap:** The value of every parent node is $\le$ the values of its child nodes ($\text{Root} = \text{Minimum value}$).

### 3. Core Mechanics: Heapify, Insert, and Extract

- **`sift_up` (Bubble Up):** Restores heap property after insertion at the array's end ($O(\log N)$).
- **`sift_down` (Bubble Down):** Restores heap property after root extraction ($O(\log N)$).
- **`build_heap` (Heapification from Unsorted Array):** Running `sift_down` from index $\lfloor N/2 \rfloor - 1$ down to $0$ constructs a valid heap in $O(N)$ linear time (not $O(N \log N)$), mathematically proven via Taylor Series summation:
  $$\sum_{h=0}^{\log N} \frac{h}{2^h} \approx 2 \implies O(N)$$

### 4. Standard Top-K Extraction Pattern

- To maintain the **Top-K Largest Elements** from a stream of size $N$: Use a **Min-Heap of size $K$**. If the incoming element is greater than the heap root, pop and push the incoming value. Space: $O(K)$, Time: $O(N \log K)$.
- To maintain the **Top-K Smallest Elements**: Use a **Max-Heap of size $K$**.

---

## ⏱️ Complexity Profile

| Operation                   | Heap Array Implementation | Unsorted Array | Balanced BST  |
| :-------------------------- | :-----------------------: | :------------: | :-----------: |
| **Get Min / Max (Peek)**    |          $O(1)$           |     $O(N)$     |  $O(\log N)$  |
| **Insert (`push`)**         |        $O(\log N)$        |     $O(1)$     |  $O(\log N)$  |
| **Extract Min/Max (`pop`)** |        $O(\log N)$        |     $O(N)$     |  $O(\log N)$  |
| **Build Heap from Array**   |          $O(N)$           |     $O(1)$     | $O(N \log N)$ |

---

## 🎥 Curated Video Lectures

| Topic                                         | Primary Instructor     | Video / Playlist Link                                                                        |
| :-------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Heap - Heapify, Insert, Delete, Heap Sort** | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/watch?v=HqPJF2L5h9U)                              |
| **Heaps & Priority Queues Playlist**          | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma) |
| **Top-K Elements & Two Heaps Pattern**        | NeetCode               | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53ldVwtstag2TL4HQhAnC8ATf) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                          | Difficulty | Applied Pattern                           |                                                 Solution Walkthrough                                                 |
| :-: | :--------------------------------------------------------------------------------------------------------------- | :--------: | :---------------------------------------- | :------------------------------------------------------------------------------------------------------------------: |
|  1  | [Kth Largest Element in an Array (LeetCode 215)](https://leetcode.com/problems/kth-largest-element-in-an-array/) | 🟡 Medium  | Min-Heap of size K / QuickSelect          | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+215+Kth+Largest+Element+in+an+Array+NeetCode) |
|  2  | [Top K Frequent Elements (LeetCode 347)](https://leetcode.com/problems/top-k-frequent-elements/)                 | 🟡 Medium  | Frequency Map + Min-Heap / Bucket Sort    |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+347+Top+K+Frequent+Elements+NeetCode)     |
|  3  | [Task Scheduler (LeetCode 621)](https://leetcode.com/problems/task-scheduler/)                                   | 🟡 Medium  | Max-Heap Frequency Tracking + Queue       |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+621+Task+Scheduler+NeetCode)          |
|  4  | [Design Twitter (LeetCode 355)](https://leetcode.com/problems/design-twitter/)                                   | 🟡 Medium  | Max-Heap $K$-Way Merge of Feeds           |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+355+Design+Twitter+NeetCode)          |
|  5  | [Find Median from Data Stream (LeetCode 295)](https://leetcode.com/problems/find-median-from-data-stream/)       |  🔴 Hard   | Two Heaps (Max-Heap Left, Min-Heap Right) |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+295+Find+Median+from+Data+Stream+NeetCode)   |
