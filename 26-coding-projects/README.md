# 📌 26. Practical Data Structure & System Projects

Implementing data structures from scratch and building applied systems bridges the gap between competitive problem-solving and software engineering. These projects reinforce low-level memory allocation, object-oriented design, cache mechanics, and algorithmic performance optimization.

---

## 🧭 Directory Map & Organization

```text
26-coding-projects/
├── 01-custom-vector/        # Dynamic memory resizing array with amortized O(1) ops
├── 02-custom-hash-map/      # Separate chaining hash map with dynamic bucket rehashing
├── 03-custom-linked-list/   # Templated Doubly Linked List with custom bidirectional iterators
├── 04-lru-cache/            # High-performance O(1) LRU & LFU in-memory caches
├── 05-mini-search-engine/   # Inverted index & Trie-based autocomplete query engine
└── 06-graph-visualizer/     # Pathfinding router implementing Dijkstra, A*, and BFS
```

---

## 🛠️ Project Specifications & Engineering Breakdown

### 1. Custom Vector (`01-custom-vector/`)

- **Key Concepts:** Dynamic raw memory management via pointers (`new[]` / `delete[]`), geometric capacity doubling, move semantics (`std::move`), copy constructors, and amortized $O(1)$ push-back.
- **Methods to Implement:** `push_back()`, `pop_back()`, `reserve()`, `resize()`, `operator[]`, `size()`, `capacity()`.

### 2. Custom Hash Map (`02-custom-hash-map/`)

- **Key Concepts:** Polynomial rolling hash function, collision resolution via Separate Chaining, load factor monitoring ($\alpha = \frac{N}{K} > 0.75$), dynamic rehashing ($2 \times \text{buckets}$).
- **Methods to Implement:** `put(key, value)`, `get(key)`, `remove(key)`, `rehash()`, `load_factor()`.

### 3. Custom Doubly Linked List (`03-custom-linked-list/`)

- **Key Concepts:** Pointer management with sentinel `head` and `tail` dummy nodes, $O(1)$ node deletion given a pointer, bidirectional iterator classes (`begin()`, `end()`, `++`, `--`).
- **Methods to Implement:** `push_front()`, `push_back()`, `pop_front()`, `pop_back()`, `insert_after()`, `erase()`.

### 4. Production LRU & LFU Cache Engine (`04-lru-cache/`)

- **LRU Cache:** Combination of a Doubly Linked List and Hash Map providing strict $O(1)$ access, insertion, and eviction of the least recently used element upon reaching capacity.
- **LFU Cache:** Nested frequency buckets with doubly linked lists providing $O(1)$ operations while evicting the least frequently accessed elements.

### 5. Mini Autocomplete Search Engine (`05-mini-search-engine/`)

- **Key Concepts:** Inverted Index for keyword-to-document mappings, Prefix Trie for real-time auto-completion suggestions, and Term Frequency ranking.
- **Methods to Implement:** `index_document(doc_id, text)`, `search(query)`, `autocomplete(prefix)`.

### 6. Graph Pathfinding Visualizer / Router (`06-graph-visualizer/`)

- **Key Concepts:** Grid matrix pathfinding, Dijkstra's algorithm with Min-Heaps, A\* Search heuristic ($f(n) = g(n) + h(n)$ using Manhattan/Euclidean distance), and BFS wavefront animation.
- **Methods to Implement:** `find_shortest_path(start, end)`, `generate_maze()`, `compute_heuristic()`.

---

## 🎥 Video Tutorials & Project Guides

| Project                                      | Primary Instructor      | Link                                                            |
| :------------------------------------------- | :---------------------- | :-------------------------------------------------------------- |
| **Vector Implementation from Scratch (C++)** | The Cherno (C++ Series) | [Watch on YouTube](https://www.youtube.com/watch?v=ryRf4Jh_YC8) |
| **Hash Table Implementation in C/C++**       | Jacob Sorber            | [Watch on YouTube](https://www.youtube.com/watch?v=2Ti5yvumFTU) |
| **LRU Cache System Design & Implementation** | NeetCode                | [Watch on YouTube](https://www.youtube.com/watch?v=7ABFKPK2hD4) |
| **A\* Pathfinding Visualization Tutorial**   | Tech With Tim           | [Watch on YouTube](https://www.youtube.com/watch?v=JtiK0DOeI4A) |

---

## 🎯 Implementation Checklist

- [ ] Complete `01-custom-vector` implementation with unit tests
- [ ] Complete `02-custom-hash-map` with dynamic rehashing
- [ ] Complete `03-custom-linked-list` with custom iterators
- [ ] Complete `04-lru-cache` ($O(1)$ get & put)
- [ ] Complete `05-mini-search-engine` with Prefix Trie auto-complete
- [ ] Complete `06-graph-visualizer` with Dijkstra and A\* pathfinding
