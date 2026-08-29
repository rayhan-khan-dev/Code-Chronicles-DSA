# 📌 21. Advanced Algorithmic Paradigms

Advanced algorithmic paradigms tackle problems at the competitive programming and specialized systems engineering level, spanning offline query reordering, square-root decompositions, binary lifting, and max-flow network optimization.

---

## 🧠 Core Conceptual Breakdown

### 1. Mo's Algorithm (Offline Range Query Optimization)

- Reorders offline static range queries $[L_i, R_i]$ into buckets of size $\sqrt{N}$ to minimize two-pointer movement.
- **Sorting Comparator:**
  ```text
  bool comp(Query a, Query b):
      if (a.L / BLOCK_SIZE != b.L / BLOCK_SIZE)
          return a.L / BLOCK_SIZE < b.L / BLOCK_SIZE;
      return (a.L / BLOCK_SIZE) % 2 ? a.R < b.R : a.R > b.R;
  ```
- **Overall Time Complexity:** $O((N + Q) \sqrt{N})$.

### 2. Binary Lifting & Lowest Common Ancestor (LCA)

- Precomputes ancestors of every tree node at powers of two: `up[node][k]` stores the $2^k$-th parent of `node`.
- **Precomputation:** $O(N \log N)$ via DFS.
- **LCA / $K$-th Ancestor Query:** $O(\log N)$ per query.

### 3. Maximum Network Flow (Ford-Fulkerson & Dinic's Algorithm)

- Finds maximum transport capacity from a source $S$ to sink $T$ along directed, capacity-bounded pipelines.
- **Max-Flow Min-Cut Theorem:** The maximum flow through any network equals the minimum weight of a cut separating $S$ and $T$.
- **Dinic's Algorithm:** Uses Level Graphs via BFS and Blocking Flows via DFS to achieve $O(V^2 E)$ time ($O(E \sqrt{V})$ on unit bipartite graphs).

### 4. Centroid Decomposition

- Divides any tree into hierarchical subtrees by recursively identifying the **Centroid** (a node whose removal leaves no component with size $> \lfloor N/2 \rfloor$).
- Tree recursion depth is bounded by $O(\log N)$, allowing tree path queries to be resolved in $O(N \log N)$ time.

---

## ⏱️ Complexity Profile

| Paradigm                      | Target Problem                    |    Time Complexity    | Prerequisite                     |
| :---------------------------- | :-------------------------------- | :-------------------: | :------------------------------- |
| **Mo's Algorithm**            | Offline range frequency/diversity | $O((N + Q) \sqrt{N})$ | Queries are static (no updates)  |
| **Binary Lifting (LCA)**      | Tree $K$-th parent / distance     |  $O(\log N)$ / query  | Precomputation $O(N \log N)$     |
| **Dinic's Algorithm**         | Maximum bipartite matching / Flow |      $O(V^2 E)$       | Residual graph & edge capacities |
| **Heavy-Light Decomposition** | Path updates on trees             | $O(\log^2 N)$ / query | Segment tree over heavy chains   |

---

## 🎥 Curated Video Lectures

| Topic                                            | Primary Instructor                 | Video / Playlist Link                                           |
| :----------------------------------------------- | :--------------------------------- | :-------------------------------------------------------------- |
| **Binary Lifting & LCA on Trees**                | Errichto (Competitive Programming) | [Watch on YouTube](https://www.youtube.com/watch?v=oib-XsjFa-M) |
| **Mo's Algorithm & Square Root Decomposition**   | Luv (C++ CP Series)                | [Watch on YouTube](https://www.youtube.com/watch?v=0k_2k3bXk8c) |
| **Maximum Flow - Ford Fulkerson & Edmonds Karp** | William Fiset                      | [Watch on YouTube](https://www.youtube.com/watch?v=LdOnanfc5TM) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                          | Difficulty | Strategy Applied                             |                                                Solution Walkthrough                                                 |
| :-: | :------------------------------------------------------------------------------------------------------------------------------- | :--------: | :------------------------------------------- | :-----------------------------------------------------------------------------------------------------------------: |
|  1  | [Kth Ancestor of a Tree Node (LeetCode 1483)](https://leetcode.com/problems/kth-ancestor-of-a-tree-node/)                        |  🔴 Hard   | Binary Lifting Table                         |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1483+Kth+Ancestor+of+a+Tree+Node)       |
|  2  | [Maximum Number of Accepted Invitations (LeetCode 1820)](https://leetcode.com/problems/maximum-number-of-accepted-invitations/)  | 🟡 Medium  | Maximum Bipartite Matching (Augmenting Path) | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1820+Maximum+Number+of+Accepted+Invitations) |
|  3  | [Lowest Common Ancestor of a Binary Tree (LeetCode 236)](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/) | 🟡 Medium  | Recursive DFS / Euler Tour + RMQ             |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+236+Lowest+Common+Ancestor+NeetCode)     |
