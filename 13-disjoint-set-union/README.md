# 📌 13. Disjoint Set Union (DSU / Union-Find)

Disjoint Set Union (DSU), also known as Union-Find, is a data structure that tracks a set of elements partitioned into non-overlapping (disjoint) subsets. It provides near-constant time operations to determine if two elements belong to the same connected component and to merge two separate components together.

---

## 🧠 Core Conceptual Breakdown

### 1. Primary Operations

- **`find(u)`:** Determines the representative (root/parent) of the set containing element $u$.
- **`union(u, v)`:** Connects the component containing element $u$ with the component containing element $v$.

### 2. Crucial Optimizations (Reaching $\alpha(N)$)

A naive DSU forms skewed, linear chains resembling linked lists, resulting in $O(N)$ operations. Two essential optimizations reduce this complexity:

- **Path Compression (during `find`):** Flattens the tree structure by making every node along the traversal path point directly to the root:
  ```text
  find(u):
      if parent[u] == u:
          return u
      parent[u] = find(parent[u])  // Path Compression
      return parent[u]
  ```
- **Union by Rank / Size (during `union`):** Always attaches the smaller tree (lower rank/size) under the root of the larger tree:
  ```text
  union(u, v):
      root_u = find(u)
      root_v = find(v)
      if root_u != root_v:
          if size[root_u] < size[root_v]:
              parent[root_u] = root_v
              size[root_v] += size[root_u]
          else:
              parent[root_v] = root_u
              size[root_u] += size[root_v]
  ```

### 3. Ackermann Inverse Function $\alpha(N)$

- Combining Path Compression and Union by Rank reduces the amortized time complexity per operation to $O(\alpha(N))$, where $\alpha$ is the inverse Ackermann function.
- For all practical inputs ($N \le 10^{80}$, more than the number of atoms in the observable universe), $\alpha(N) \le 4$, making operations effectively $O(1)$.

---

## ⏱️ Complexity Profile

| Approach                                  |          `find(u)`          |        `union(u, v)`        | Space Complexity |
| :---------------------------------------- | :-------------------------: | :-------------------------: | :--------------: |
| **Naive Array/Tree**                      |           $O(N)$            |           $O(N)$            |      $O(N)$      |
| **Union by Rank only**                    |         $O(\log N)$         |         $O(\log N)$         |      $O(N)$      |
| **Path Compression only**                 |    $O(\log N)$ Amortized    |    $O(\log N)$ Amortized    |      $O(N)$      |
| **Path Compression + Union by Rank/Size** | $O(\alpha(N)) \approx O(1)$ | $O(\alpha(N)) \approx O(1)$ |      $O(N)$      |

---

## 🎥 Curated Video Lectures

| Topic                                                | Primary Instructor     | Video / Playlist Link                                           |
| :--------------------------------------------------- | :--------------------- | :-------------------------------------------------------------- |
| **Disjoint Set Union (DSU) Complete Theory & Proof** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/watch?v=aBxjDBC4M1U) |
| **Union-Find / Disjoint Set Data Structure**         | William Fiset          | [Watch on YouTube](https://www.youtube.com/watch?v=ibjEGG7ylHk) |
| **Disjoint Sets Theory and Implementation**          | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/watch?v=wU6udHRIkcc) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                                         | Difficulty | Applied Pattern                     |                                                        Solution Walkthrough                                                         |
| :-: | :---------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :---------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------: |
|  1  | [Number of Provinces (LeetCode 547)](https://leetcode.com/problems/number-of-provinces/)                                                        | 🟡 Medium  | Connected Components Count          |               [Video Solution](https://www.youtube.com/results?search_query=LeetCode+547+Number+of+Provinces+Striver)               |
|  2  | [Redundant Connection (LeetCode 684)](https://leetcode.com/problems/redundant-connection/)                                                      | 🟡 Medium  | Cycle Detection in Undirected Graph |              [Video Solution](https://www.youtube.com/results?search_query=LeetCode+684+Redundant+Connection+NeetCode)              |
|  3  | [Accounts Merge (LeetCode 721)](https://leetcode.com/problems/accounts-merge/)                                                                  | 🟡 Medium  | Disjoint Email Clustering           |                 [Video Solution](https://www.youtube.com/results?search_query=LeetCode+721+Accounts+Merge+NeetCode)                 |
|  4  | [Number of Operations to Make Network Connected (LeetCode 1319)](https://leetcode.com/problems/number-of-operations-to-make-network-connected/) | 🟡 Medium  | Extra Edge Calculation              | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1319+Number+of+Operations+to+Make+Network+Connected+Striver) |
|  5  | [Number of Islands II (LeetCode 305)](https://leetcode.com/problems/number-of-islands-ii/)                                                      |  🔴 Hard   | Dynamic Grid DSU Connectivity       |              [Video Solution](https://www.youtube.com/results?search_query=LeetCode+305+Number+of+Islands+II+Solution)              |
