# 📌 03. Linked Lists

A Linked List is a linear dynamic data structure where elements are not stored in contiguous physical memory locations. Instead, individual nodes contain data alongside one or more reference pointers (`next`, `prev`) that point to adjacent nodes in memory.

---

## 🧠 Core Conceptual Breakdown

### 1. Structural Variants

- **Singly Linked List:** Each node maintains a single pointer (`next`) pointing to the succeeding node. Traversal is strictly unidirectional $O(N)$.
- **Doubly Linked List:** Each node stores dual pointers (`next`, `prev`). Facilitates bidirectional traversal and $O(1)$ node deletion given a direct pointer to the target node.
- **Circular Linked List:** The terminal node links back to the head node instead of pointing to `NULL`.

### 2. Memory Mechanics: Array vs. Linked List

- **Cache Locality:** Arrays leverage contiguous CPU cache line prefetching. Linked list nodes reside scattered across heap memory, inducing frequent CPU cache misses.
- **Memory Overhead:** Every node requires extra pointer storage (8 bytes per pointer on 64-bit systems). A singly linked list of 32-bit integers incurs 66% memory overhead purely for pointer addressing.

### 3. Essential Manipulation Patterns

- **Dummy Node Technique:** Instantiating a temporary dummy node before the head (`ListNode dummy(0); dummy.next = head;`) eliminates edge-case conditionals when deleting or inserting at the head.
- **Fast & Slow Pointers (Floyd's Tortoise and Hare):**
  - **Middle of List:** Move `fast` by 2 steps and `slow` by 1 step. When `fast` reaches the end, `slow` is at the exact midpoint.
  - **Cycle Detection:** If a cycle exists, `fast` and `slow` will eventually collide inside the loop in $O(N)$ time.
- **In-Place Reversal:** Reversing pointers sequentially using three tracker pointers (`prev`, `curr`, `next`) in $O(N)$ time and $O(1)$ auxiliary space.

---

## ⏱️ Operation Complexity Matrix

| Operation                                     |      Array       | Singly Linked List | Doubly Linked List |
| :-------------------------------------------- | :--------------: | :----------------: | :----------------: |
| **Access by Index ($k$)**                     |      $O(1)$      |       $O(k)$       |       $O(k)$       |
| **Insert at Beginning**                       |      $O(N)$      |       $O(1)$       |       $O(1)$       |
| **Insert at End (with tail pointer)**         | $O(1)$ Amortized |       $O(1)$       |       $O(1)$       |
| **Insert at Arbitrary Position (after node)** |      $O(N)$      |       $O(1)$       |       $O(1)$       |
| **Delete Node (given reference pointer)**     |      $O(N)$      |       $O(N)$       |       $O(1)$       |

---

## 🎥 Curated Video Lectures

| Topic                                          | Primary Instructor     | Video / Playlist Link                                                                        |
| :--------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Linked List Mastery Series (A2Z DSA)**       | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0r47xCOzAEQO0hZXBGn8zn8) |
| **Linked List Core Patterns & Visualizations** | NeetCode               | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53leU0KE3P53ez5jM224af_25) |
| **Floyd’s Cycle Detection Algorithm Proof**    | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/watch?v=apIw0OpQX5M)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                   | Difficulty | Core Strategy                              |                                             Solution Walkthrough                                             |
| :-: | :-------------------------------------------------------------------------------------------------------- | :--------: | :----------------------------------------- | :----------------------------------------------------------------------------------------------------------: |
|  1  | [Reverse Linked List (LeetCode 206)](https://leetcode.com/problems/reverse-linked-list/)                  |  🟢 Easy   | Three Pointers In-place Reversal           |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+206+Reverse+Linked+List+NeetCode)   |
|  2  | [Merge Two Sorted Lists (LeetCode 21)](https://leetcode.com/problems/merge-two-sorted-lists/)             |  🟢 Easy   | Dummy Node Iterative Merge                 |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+21+Merge+Two+Sorted+Lists+NeetCode)  |
|  3  | [Linked List Cycle (LeetCode 141)](https://leetcode.com/problems/linked-list-cycle/)                      |  🟢 Easy   | Floyd's Fast & Slow Pointers               |    [Video Solution](https://www.youtube.com/results?search_query=LeetCode+141+Linked+List+Cycle+NeetCode)    |
|  4  | [Remove Nth Node From End (LeetCode 19)](https://leetcode.com/problems/remove-nth-node-from-end-of-list/) | 🟡 Medium  | Two Pointers with $N$-gap Offset           | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+19+Remove+Nth+Node+From+End+NeetCode) |
|  5  | [Reorder List (LeetCode 143)](https://leetcode.com/problems/reorder-list/)                                | 🟡 Medium  | Find Mid + Reverse Half + Merge            |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+143+Reorder+List+NeetCode)       |
|  6  | [LRU Cache (LeetCode 146)](https://leetcode.com/problems/lru-cache/)                                      | 🟡 Medium  | Doubly Linked List + Hash Map              |        [Video Solution](https://www.youtube.com/results?search_query=LeetCode+146+LRU+Cache+NeetCode)        |
|  7  | [Merge k Sorted Lists (LeetCode 23)](https://leetcode.com/problems/merge-k-sorted-lists/)                 |  🔴 Hard   | Min-Heap Priority Queue / Divide & Conquer |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+23+Merge+k+Sorted+Lists+NeetCode)   |
|  8  | [Reverse Nodes in k-Group (LeetCode 25)](https://leetcode.com/problems/reverse-nodes-in-k-group/)         |  🔴 Hard   | Chunk Verification & Pointer Stitching     | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+25+Reverse+Nodes+in+k-Group+NeetCode) |
