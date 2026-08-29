# 📌 23. Competitive Programming (CP) Playbook

Competitive Programming focuses on solving algorithmic problems under strict execution time ($1.0\text{s} \approx 10^8 \text{ operations}$) and memory bounds ($256\text{MB}$). Success requires rapid problem classification, optimal language-level I/O optimizations, and mastery of the C++ Standard Template Library (STL).

---

## 🧠 Core CP Principles & Environment Setup

### 1. Fast I/O in C++

Standard `std::cin` and `std::cout` synchronize with C standard streams (`stdio`), adding significant runtime overhead. Always disable synchronization at the start of `main()`:

```cpp
#include <bits/stdc++.h>
using namespace std;

void fast_io() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
}
```

_Never use `std::endl` inside tight loops as it triggers a costly `flush` operation. Use `'\n'` instead._

### 2. Time Constraints & Complexity Bounds ($1.0\text{s} \approx 10^8 \text{ Operations}$)

| Input Constraint ($N$) | Acceptable Time Complexities | Typical Algorithms                                   |
| :--------------------- | :--------------------------- | :--------------------------------------------------- |
| $N \le 10$             | $O(N!), O(N^6)$              | Exhaustive Permutations, Brute Force                 |
| $N \le 20$             | $O(2^N \cdot N)$             | Bitmask DP, Subsets Recursion                        |
| $N \le 500$            | $O(N^3)$                     | Floyd-Warshall, Matrix Chain Multiplication DP       |
| $N \le 5000$           | $O(N^2)$                     | Dynamic Programming, Nested Loops                    |
| $N \le 10^5 - 10^6$    | $O(N \log N), O(N)$          | Sorting, Binary Search, Segment Tree, Hash Map       |
| $N \le 10^9 - 10^{18}$ | $O(\log N), O(1)$            | Binary Search on Answer, Matrix Exponentiation, Math |

### 3. C++ STL Speed Cheatsheet

- **`std::vector`:** Flat contiguous array, cache friendly. Use `.reserve(N)` to avoid dynamic reallocation.
- **`std::priority_queue`:** Binary heap. Default is Max-Heap. Min-Heap: `priority_queue<int, vector<int>, greater<int>>`.
- **`std::set` / `std::map`:** Red-Black Tree ($O(\log N)$).
- **`std::unordered_map`:** Hash Table. **Warning:** Vulnerable to custom anti-hash test cases yielding $O(N^2)$ worst-case TLE on Codeforces. Use custom splitmix64 hashes when using hash maps on CP platforms.

---

## 🎥 Curated Video Lectures & CP Roadmaps

| Topic                                   | Primary Instructor                | Video / Playlist Link                                                                        |
| :-------------------------------------- | :-------------------------------- | :------------------------------------------------------------------------------------------- |
| **Complete C++ STL Playlist for CP**    | Luv (C++ Competitive Programming) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLauivoElc3gh3rkPn43eH4u95WRe3FA7m) |
| **How to Start CP (Codeforces Guide)**  | Errichto                          | [Watch on YouTube](https://www.youtube.com/watch?v=bOIbUqWmW0A)                              |
| **CSES Problem Set Walkthrough Series** | William Lin / Colin Galen         | [Watch on YouTube](https://www.youtube.com/results?search_query=CSES+Problem+Set+Solutions)  |

---

## 🎯 Recommended Competitive Programming Problem Sets

### 1. CSES Problem Set (Must-Solve for Core CP Fundamentals)

- **Introductory Problems:** Weird Algorithm, Number Spiral, Two Knights.
- **Sorting & Searching:** Ferris Wheel, Movie Festival, Concert Tickets.
- **Dynamic Programming:** Dice Combinations, Grid Paths, Book Shop.
- **Graph Algorithms:** Labyrinth, Building Roads, Round Trip.

### 2. Codeforces Rating Ladders (A2OJ / Codeforces Curated)

- **Div. 2 A & B:** Focus on rapid implementation and simulation.
- **Div. 2 C & D:** Number theory, binary search, graph traversals, and dynamic programming.
