# 📌 16. Advanced Graph Algorithms

Advanced graph algorithms solve complex pathfinding, dependency resolution, cycle resolution, and network flow optimization on weighted and directed topologies.

---

## 🧠 Core Conceptual Breakdown

### 1. Topological Sorting & Kahn's Algorithm

- **Definition:** Linear ordering of vertices in a Directed Acyclic Graph (DAG) such that for every directed edge $u \to v$, vertex $u$ comes before $v$.
- **Kahn's Algorithm (BFS-based):**
  1. Compute the in-degree of all vertices.
  2. Push all vertices with `in-degree == 0` into a queue.
  3. Pop a vertex, append it to the topological order, and decrement the in-degree of its neighbors.
  4. If a neighbor reaches `in-degree == 0`, push it to the queue.
  5. _Cycle Check:_ If processed count $< V$, a cycle exists!

### 2. Shortest Path Algorithms

- **Dijkstra's Algorithm:**
  - Solves Single-Source Shortest Path (SSSP) on non-negative weighted graphs using a Min-Heap / Priority Queue.
  - Time Complexity: $O((V + E) \log V)$.
- **Bellman-Ford Algorithm:**
  - Handles **negative edge weights** and detects **negative weight cycles** by relaxing all $E$ edges $V - 1$ times.
  - Time Complexity: $O(V \times E)$.
- **Floyd-Warshall Algorithm:**
  - All-Pairs Shortest Path (APSP) using 2D DP matrix relaxation:
    $$\text{dist}[i][j] = \min(\text{dist}[i][j], \text{dist}[i][k] + \text{dist}[k][j])$$
  - Time Complexity: $O(V^3)$.

### 3. Minimum Spanning Tree (MST)

A subgraph connecting all $V$ vertices with exactly $V - 1$ edges while minimizing total edge weight.

- **Kruskal's Algorithm:** Sort all edges by weight, iterate through them, and add edges using DSU if they don't form a cycle ($O(E \log E)$).
- **Prim's Algorithm:** Starts from a source node and greedily expands the frontier using a Min-Heap ($O(E \log V)$).

### 4. Strongly Connected Components (SCC)

- **Kosaraju's Algorithm:** Finds maximal subgraphs where every vertex is reachable from every other vertex using DFS + Graph Transposition ($O(V + E)$).
- **Tarjan's Algorithm:** Discovers SCCs in a single DFS pass using discovery times and low-link values.

---

## ⏱️ Algorithm Selection Guide

| Problem Requirement                  | Best Algorithm             |   Time Complexity   | Constraints / Limitations                 |
| :----------------------------------- | :------------------------- | :-----------------: | :---------------------------------------- |
| **Dependency Order / Scheduling**    | Kahn's Algo / DFS TopoSort |     $O(V + E)$      | Graph must be a DAG                       |
| **Shortest Path (Unweighted)**       | BFS                        |     $O(V + E)$      | Edge weights must be uniform              |
| **Shortest Path (Non-negative)**     | Dijkstra's Algorithm       | $O((V + E) \log V)$ | No negative weight edges                  |
| **Shortest Path (Negative weights)** | Bellman-Ford               |   $O(V \times E)$   | Detects negative cycles                   |
| **All-Pairs Shortest Path**          | Floyd-Warshall             |      $O(V^3)$       | Best for small dense graphs ($V \le 400$) |
| **Minimum Spanning Tree**            | Kruskal's Algorithm        |    $O(E \log E)$    | Undirected weighted graphs                |

---

## 🎥 Curated Video Lectures

| Topic                                     | Primary Instructor     | Video / Playlist Link                                                                        |
| :---------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------- |
| **Graph Shortest Path & MST Playlist**    | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn) |
| **Dijkstra's & Bellman-Ford Masterclass** | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/watch?v=XB4MIexjvY0)                              |
| **Topological Sort & Kahn's Algorithm**   | William Fiset          | [Watch on YouTube](https://www.youtube.com/watch?v=cIBFEhD77b4)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                               | Difficulty | Algorithm Used                         |                                                 Solution Walkthrough                                                 |
| :-: | :-------------------------------------------------------------------------------------------------------------------- | :--------: | :------------------------------------- | :------------------------------------------------------------------------------------------------------------------: |
|  1  | [Course Schedule (LeetCode 207)](https://leetcode.com/problems/course-schedule/)                                      | 🟡 Medium  | Kahn's Algorithm / Cycle Detection     |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+207+Course+Schedule+NeetCode)         |
|  2  | [Course Schedule II (LeetCode 210)](https://leetcode.com/problems/course-schedule-ii/)                                | 🟡 Medium  | Topological Sort Order Generation      |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+210+Course+Schedule+II+NeetCode)        |
|  3  | [Network Delay Time (LeetCode 743)](https://leetcode.com/problems/network-delay-time/)                                | 🟡 Medium  | Dijkstra's Single Source Shortest Path |       [Video Solution](https://www.youtube.com/results?search_query=LeetCode+743+Network+Delay+Time+NeetCode)        |
|  4  | [Cheapest Flights Within K Stops (LeetCode 787)](https://leetcode.com/problems/cheapest-flights-within-k-stops/)      | 🟡 Medium  | Bellman-Ford / Modified Dijkstra       | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+787+Cheapest+Flights+Within+K+Stops+NeetCode) |
|  5  | [Min Cost to Connect All Points (LeetCode 1584)](https://leetcode.com/problems/min-cost-to-connect-all-points/)       | 🟡 Medium  | Kruskal's / Prim's Algorithm (MST)     | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1584+Min+Cost+to+Connect+All+Points+NeetCode) |
|  6  | [Critical Connections in a Network (LeetCode 1192)](https://leetcode.com/problems/critical-connections-in-a-network/) |  🔴 Hard   | Tarjan's Bridge-Finding Algorithm      |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1192+Critical+Connections+Striver)       |
