# 📌 10. Trees & Binary Search Trees

A Tree is a non-linear hierarchical data structure consisting of nodes connected by directed edges, with a single designated root node and no cycles. Trees form the foundational architecture for relational indexing, abstract syntax trees, and file systems.

---

## 🧠 Core Conceptual Breakdown

### 1. Structural Typologies

- **Binary Tree (BT):** Each node has at most two children (`left`, `right`).
- **Binary Search Tree (BST):** Enforces a strict ordering property:
  $$\forall x \in \text{Left Subtree: } \text{Value}(x) < \text{Value}(\text{Root})$$
  $$\forall y \in \text{Right Subtree: } \text{Value}(y) > \text{Value}(\text{Root})$$
  _Inorder traversal of a BST produces elements in strictly sorted order._
- **Self-Balancing BSTs (AVL, Red-Black Trees):** Dynamically rebalance via pointer rotations to maintain $O(\log N)$ height bounds during insertions and deletions.

### 2. Traversal Algorithms

- **Depth-First Search (DFS):**
  - **Pre-Order ($N \to L \to R$):** Used for copying/serializing trees.
  - **In-Order ($L \to N \to R$):** Used for sorted traversal in BSTs.
  - **Post-Order ($L \to R \to N$):** Used for bottom-up computation (e.g., tree height, deleting nodes).
- **Breadth-First Search (BFS / Level Order):** Traverses nodes layer by layer using a FIFO Queue.
- **Morris Inorder Traversal:** Traverses binary trees without recursion or explicit stack memory using threaded binary trees ($O(N)$ time, $O(1)$ auxiliary space).

### 3. Tree Depth & Diameter Calculations

- **Height of Node:** Length of longest downward path from node to a leaf:
  $$\text{Height}(u) = 1 + \max(\text{Height}(u.\text{left}), \text{Height}(u.\text{right}))$$
- **Diameter:** Longest path between any two arbitrary leaf nodes in the tree (does not necessarily pass through root).

---

## ⏱️ Operation Complexity Matrix

| Operation               | General Binary Tree | Unbalanced BST (Worst) | Balanced BST (AVL/Red-Black) |
| :---------------------- | :-----------------: | :--------------------: | :--------------------------: |
| **Search**              |       $O(N)$        |         $O(N)$         |         $O(\log N)$          |
| **Insertion**           |       $O(N)$        |         $O(N)$         |         $O(\log N)$          |
| **Deletion**            |       $O(N)$        |         $O(N)$         |         $O(\log N)$          |
| **Traversal (DFS/BFS)** |       $O(N)$        |         $O(N)$         |            $O(N)$            |

---

## 🎥 Curated Video Lectures

| Topic                                          | Primary Instructor     | Video / Playlist Link                                                                        |
| :--------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Binary Tree & BST Complete Roadmap (A2Z)**   | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0q8Hkd7bK2Bpryj2xVJk8Vk) |
| **Trees Pattern Recognition & DFS/BFS Series** | NeetCode               | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53ldg4pN6PfzoJY7KsKcxY1jg) |
| **Tree Rotations & AVL Tree Balance Proofs**   | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/watch?v=jDM6_TnYIqE)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                       | Difficulty | Category                                        |                                                    Solution Walkthrough                                                    |
| :-: | :---------------------------------------------------------------------------------------------------------------------------- | :--------: | :---------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------: |
|  1  | [Maximum Depth of Binary Tree (LeetCode 104)](https://leetcode.com/problems/maximum-depth-of-binary-tree/)                    |  🟢 Easy   | Bottom-Up DFS Recursion                         |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+104+Maximum+Depth+of+Binary+Tree+NeetCode)      |
|  2  | [Invert/Flip Binary Tree (LeetCode 226)](https://leetcode.com/problems/invert-binary-tree/)                                   |  🟢 Easy   | Pointer Swapping Traversal                      |          [Video Solution](https://www.youtube.com/results?search_query=LeetCode+226+Invert+Binary+Tree+NeetCode)           |
|  3  | [Binary Tree Level Order Traversal (LeetCode 102)](https://leetcode.com/problems/binary-tree-level-order-traversal/)          | 🟡 Medium  | Queue-based BFS Layering                        |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+102+Binary+Tree+Level+Order+Traversal+NeetCode)   |
|  4  | [Lowest Common Ancestor in BST (LeetCode 235)](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/) | 🟡 Medium  | BST Value Split Branching                       |    [Video Solution](https://www.youtube.com/results?search_query=LeetCode+235+Lowest+Common+Ancestor+of+a+BST+NeetCode)    |
|  5  | [Validate Binary Search Tree (LeetCode 98)](https://leetcode.com/problems/validate-binary-search-tree/)                       | 🟡 Medium  | Range Boundary Propagation $(-\infty, +\infty)$ |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+98+Validate+Binary+Search+Tree+NeetCode)       |
|  6  | [Binary Tree Maximum Path Sum (LeetCode 124)](https://leetcode.com/problems/binary-tree-maximum-path-sum/)                    |  🔴 Hard   | Post-Order Bottom-Up Max Gain                   |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+124+Binary+Tree+Maximum+Path+Sum+NeetCode)      |
|  7  | [Serialize and Deserialize Binary Tree (LeetCode 297)](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/)  |  🔴 Hard   | Pre-Order / BFS Encoding & Parsing              | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+297+Serialize+and+Deserialize+Binary+Tree+NeetCode) |
