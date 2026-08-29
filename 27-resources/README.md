# 📌 27. Resources, Cheatsheets & Roadmaps

A curated collection of quick-reference guides, Big-O complexity tables, C++ STL summaries, Python DSA notes, and interview prep cheatsheets.

---

## 📚 Quick References & Cheatsheets

### 1. Master Time & Space Complexity Reference

| Data Structure / Algorithm        |   Access    |          Search           |         Insertion         |         Deletion          |  Worst Space   |
| :-------------------------------- | :---------: | :-----------------------: | :-----------------------: | :-----------------------: | :------------: |
| **Array**                         |   $O(1)$    |          $O(N)$           |          $O(N)$           |          $O(N)$           |     $O(N)$     |
| **Stack / Queue / Deque**         |   $O(N)$    |          $O(N)$           |          $O(1)$           |          $O(1)$           |     $O(N)$     |
| **Singly / Doubly Linked List**   |   $O(N)$    |          $O(N)$           |          $O(1)$           |          $O(1)$           |     $O(N)$     |
| **Hash Table**                    |     N/A     | $O(1)$ Avg / $O(N)$ Worst | $O(1)$ Avg / $O(N)$ Worst | $O(1)$ Avg / $O(N)$ Worst |     $O(N)$     |
| **Binary Search Tree (Balanced)** | $O(\log N)$ |        $O(\log N)$        |        $O(\log N)$        |        $O(\log N)$        |     $O(N)$     |
| **Binary Heap (Priority Queue)**  | $O(1)$ Peek |          $O(N)$           |        $O(\log N)$        |        $O(\log N)$        |     $O(N)$     |
| **Trie (Prefix Tree)**            |   $O(L)$    |          $O(L)$           |          $O(L)$           |          $O(L)$           | $O(N \cdot L)$ |

---

## ⚡ C++ STL Quick Reference Guide

```cpp
// 1. Vector (Dynamic Array)
vector<int> v = {1, 2, 3};
v.push_back(4);
v.pop_back();

// 2. Unordered Map (Hash Table)
unordered_map<string, int> mp;
mp["apple"] = 5;
if (mp.find("apple") != mp.end()) { /* Found */ }

// 3. Unordered Set (Hash Set)
unordered_set<int> st = {1, 2, 3};
st.insert(4);
st.erase(2);

// 4. Priority Queue (Max-Heap by default)
priority_queue<int> max_heap;
max_heap.push(10);
int top_val = max_heap.top(); max_heap.pop();

// 5. Priority Queue (Min-Heap)
priority_queue<int, vector<int>, greater<int>> min_heap;
min_heap.push(10);

// 6. Double Ended Queue (Deque)
deque<int> dq;
dq.push_front(1);
dq.push_back(2);
dq.pop_front();
dq.pop_back();
```

---

## 🐍 Python DSA Quick Reference Guide

```python
# 1. Dynamic Array (List)
arr = [1, 2, 3]
arr.append(4)
arr.pop()

# 2. Hash Map (Dictionary)
hash_map = {"apple": 5}
if "apple" in hash_map:
    val = hash_map["apple"]

# 3. Hash Set
hash_set = {1, 2, 3}
hash_set.add(4)
hash_set.remove(2)

# 4. Deque (Double-ended Queue)
from collections import deque
dq = deque([1, 2, 3])
dq.appendleft(0)
dq.append(4)
dq.popleft()
dq.pop()

# 5. Heap (Min-Heap by default)
import heapq
min_heap = []
heapq.heappush(min_heap, 10)
heapq.heappush(min_heap, 5)
smallest = heapq.heappop(min_heap)  # 5
```

---

## 🌐 Recommended Books & Digital References

| Resource                              | Author / Source                  | Description                                                                 |
| :------------------------------------ | :------------------------------- | :-------------------------------------------------------------------------- |
| **Introduction to Algorithms (CLRS)** | Cormen, Leiserson, Rivest, Stein | The definitive standard textbook on algorithms and theoretical proofs       |
| **Cracking the Coding Interview**     | Gayle Laakmann McDowell          | Essential preparation book covering interview strategies and patterns       |
| **Competitive Programmer's Handbook** | Antti Laaksonen                  | Best concise reference for competitive programming algorithms               |
| **Visualgo.net**                      | Steven Halim                     | Interactive animations and visual simulations for all major data structures |
