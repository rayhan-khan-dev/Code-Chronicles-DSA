# 📌 14. Graph Foundations & Representations

A Graph $G = (V, E)$ is a non-linear data structure consisting of a finite set of vertices (or nodes) $V$ and a collection of edges $E$ interconnecting pairs of vertices. Graphs represent arbitrary relationships across social networks, routing topographies, and dependency managers.

---

## 🧠 Core Conceptual Breakdown

### 1. Graph Classifications

- **Directed (Digraph) vs. Undirected:** Edges possess strict orientation $(u \to v)$ or bidirectional traversal $(u \leftrightarrow v)$.
- **Weighted vs. Unweighted:** Edges carry scalar costs (distance, capacity, latency) or uniform unitary weights.
- **Cyclic vs. Acyclic:** Contains at least one path that loops back to the start node (Cyclic) or contains zero cycles (Acyclic).
- **DAG (Directed Acyclic Graph):** Foundation for topological sorting, task scheduling, and dynamic programming over states.

### 2. Graph Representations in Memory

#### A. Adjacency Matrix

- A 2D boolean or integer array `adj[V][V]` where `adj[u][v]` holds edge weight or existence.
- **Space:** $O(V^2)$
- **Edge Existence Query ($u \to v$):** $O(1)$
- **Iterating all Neighbors of $u$:** $O(V)$
- _Best for:_ Dense graphs where $E \approx V^2$.

#### B. Adjacency List

- An array of dynamic arrays/lists `vector<int> adj[V]` or hash map where `adj[u]` stores adjacent neighbors.
- **Space:** $O(V + E)$ (Directed), $O(V + 2E)$ (Undirected)
- **Edge Existence Query ($u \to v$):** $O(\text{deg}(u))$
- **Iterating all Neighbors of $u$:** $O(\text{deg}(u))$
- _Best for:_ Sparse graphs where $E \ll V^2$ (Standard for 95% of interview problems).

#### C. Edge List

- An array of coordinate pairs or tuples `vector<pair<int, int>> edges` or `vector<tuple<int, int, int>> edges`.
- **Space:** $O(E)$
- _Best for:_ Edge-centric algorithms like Kruskal's Minimum Spanning Tree and Bellman-Ford.

---

## ⏱️ Memory & Operation Comparison

| Representation       |   Space    | Check Edge $(u, v)$ | Find All Neighbors of $u$ | Add Vertex | Add Edge |
| :------------------- | :--------: | :-----------------: | :-----------------------: | :--------: | :------: |
| **Adjacency Matrix** |  $O(V^2)$  |       $O(1)$        |          $O(V)$           |  $O(V^2)$  |  $O(1)$  |
| **Adjacency List**   | $O(V + E)$ | $O(\text{deg}(u))$  |    $O(\text{deg}(u))$     |   $O(1)$   |  $O(1)$  |
| **Edge List**        |   $O(E)$   |       $O(E)$        |          $O(E)$           |   $O(1)$   |  $O(1)$  |

---

## 🎥 Curated Video Lectures

| Topic                                              | Primary Instructor     | Video / Playlist Link                                           |
| :------------------------------------------------- | :--------------------- | :-------------------------------------------------------------- |
| **Graph Representation in C++ & Python (A2Z DSA)** | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/watch?v=3oI-34wuUow) |
| **Graph Theory Introduction & Representations**    | William Fiset          | [Watch on YouTube](https://www.youtube.com/watch?v=eQA-m22wjTQ) |
| **Graphs: Terminology & Data Structures**          | Abdul Bari             | [Watch on YouTube](https://www.youtube.com/watch?v=pcKY4hjDrxk) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                                       | Difficulty | Fundamental Concept                   |                                               Solution Walkthrough                                               |
| :-: | :-------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :------------------------------------ | :--------------------------------------------------------------------------------------------------------------: |
|  1  | [Find the Town Judge (LeetCode 997)](https://leetcode.com/problems/find-the-town-judge/)                                                      |  🟢 Easy   | In-degree & Out-degree Arrays         |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+997+Find+the+Town+Judge+NeetCode)     |
|  2  | [Find Center of Star Graph (LeetCode 1791)](https://leetcode.com/problems/find-center-of-star-graph/)                                         |  🟢 Easy   | Degree Inspection / Edge Intersection |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1791+Find+Center+of+Star+Graph)      |
|  3  | [Clone Graph (LeetCode 133)](https://leetcode.com/problems/clone-graph/)                                                                      | 🟡 Medium  | Node Mapping + Graph Deep Copy        |         [Video Solution](https://www.youtube.com/results?search_query=LeetCode+133+Clone+Graph+NeetCode)         |
|  4  | [Minimum Number of Vertices to Reach All Nodes (LeetCode 1557)](https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes/) | 🟡 Medium  | Zero In-Degree Property               | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1557+Minimum+Number+of+Vertices+NeetCode) |
