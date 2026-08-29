# 📌 15. Graph Traversals (BFS & DFS)

Graph traversal algorithms systematically visit every node and edge across connected network components. Breadth-First Search (BFS) explores radially layer by layer, while Depth-First Search (DFS) dives deeply down a single path branch before backtracking.

---

## 🧠 Core Conceptual Breakdown

### 1. Breadth-First Search (BFS)

- **Mechanism:** Implemented using a **FIFO Queue**. Explores nodes in increasing order of their distance (edge count) from the root source.
- **Shortest Path Property:** On unweighted graphs, BFS is guaranteed to discover the shortest path (minimum edge count) between a starting node and all reachable vertices.
- **Multisource BFS:** Initializing the BFS queue with multiple starting nodes simultaneously allows wave-front exploration (e.g., finding the nearest water cell from all land cells).

### 2. Depth-First Search (DFS)

- **Mechanism:** Implemented via **Recursion (Call Stack)** or an explicit LIFO Stack. Explores as deeply as possible along each branch before backtracking.
- **Use Cases:** Connected components counting, cycle detection, path existence queries, topological sorting, and bipartite graph verification.

### 3. 2D Grid as an Implicit Graph

- Many interview problems represent graphs implicitly as 2D matrices where each cell `(r, c)` is a vertex connected to 4 or 8 directional neighbors:
  ```text
  Directions (4-way): [(0, 1), (0, -1), (1, 0), (-1, 0)]
  Directions (8-way): 4-way + [(1, 1), (1, -1), (-1, 1), (-1, -1)]
  ```

---

## ⏱️ Complexity Profile

| Algorithm                          | Time Complexity |    Auxiliary Space     | Key Advantage                                                |
| :--------------------------------- | :-------------: | :--------------------: | :----------------------------------------------------------- |
| **BFS (Adjacency List)**           |   $O(V + E)$    |      $O(V)$ Queue      | Shortest path in unweighted graphs, Level-by-level traversal |
| **DFS (Adjacency List)**           |   $O(V + E)$    | $O(V)$ Recursion Stack | Memory efficient on deep/narrow graphs, Natural backtracking |
| **BFS/DFS on Grid ($R \times C$)** | $O(R \times C)$ |    $O(R \times C)$     | Matrix boundary traversal, flood fill                        |

---

## 🎥 Curated Video Lectures

| Topic                                           | Primary Instructor     | Video / Playlist Link                                                                        |
| :---------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Graph Traversal Playlist (BFS, DFS & Grids)** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn) |
| **BFS & DFS Visualized & Explained**            | William Fiset          | [Watch on YouTube](https://www.youtube.com/watch?v=oDqjPvD54Ss)                              |
| **Connected Components & Flood Fill**           | NeetCode               | [Watch on YouTube](https://www.youtube.com/playlist?list=PLot-Xpze53ldBT_7QA8NVot219jFNr_GI) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                | Difficulty | Traversal Type                  |                                          Solution Walkthrough                                           |
| :-: | :------------------------------------------------------------------------------------- | :--------: | :------------------------------ | :-----------------------------------------------------------------------------------------------------: |
|  1  | [Number of Islands (LeetCode 200)](https://leetcode.com/problems/number-of-islands/)   | 🟡 Medium  | 2D Grid Flood Fill (DFS/BFS)    | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+200+Number+of+Islands+NeetCode)  |
|  2  | [Max Area of Island (LeetCode 695)](https://leetcode.com/problems/max-area-of-island/) | 🟡 Medium  | Component Area Accumulation     | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+695+Max+Area+of+Island+NeetCode) |
|  3  | [Rotting Oranges (LeetCode 994)](https://leetcode.com/problems/rotting-oranges/)       | 🟡 Medium  | Multi-source BFS Level Tracking |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+994+Rotting+Oranges+NeetCode)   |
|  4  | [01 Matrix (LeetCode 542)](https://leetcode.com/problems/01-matrix/)                   | 🟡 Medium  | Multi-source Reverse BFS        |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+542+01+Matrix+NeetCode)      |
|  5  | [Surrounded Regions (LeetCode 130)](https://leetcode.com/problems/surrounded-regions/) | 🟡 Medium  | Boundary-Connected DFS          | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+130+Surrounded+Regions+NeetCode) |
|  6  | [Word Ladder (LeetCode 127)](https://leetcode.com/problems/word-ladder/)               |  🔴 Hard   | Unweighted Shortest Path BFS    |    [Video Solution](https://www.youtube.com/results?search_query=LeetCode+127+Word+Ladder+NeetCode)     |
