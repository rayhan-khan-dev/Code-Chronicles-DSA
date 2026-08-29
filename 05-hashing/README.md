# 📌 05. Hashing

Hashing provides average $O(1)$ time complexity for lookup, insertion, and deletion operations by mapping arbitrarily sized keys to deterministic fixed-size integer indices within a lookup table via a mathematical hash function.

---

## 🧠 Core Conceptual Breakdown

### 1. Hash Functions & Collision Resolution

- **Hash Function:** Converts input data into an integer bucket index:
  $$\text{Index} = \text{Hash}(\text{Key}) \pmod{\text{Table Capacity}}$$
  A strong hash function maximizes uniform distribution to prevent bucket clustering.
- **Collision Resolution Strategies:**
  - **Separate Chaining (Open Hashing):** Each table index points to a linked list (or balanced red-black tree in Java 8+ when chain length exceeds 8).
  - **Open Addressing (Closed Hashing):** All elements reside directly within the array table. If a collision occurs:
    - _Linear Probing:_ Check $i+1, i+2, i+3 \dots$
    - _Quadratic Probing:_ Check $i+1^2, i+2^2, i+3^2 \dots$
    - _Double Hashing:_ Step size determined by a secondary hash function: $\text{step} = h_2(\text{key})$.

### 2. Load Factor & Dynamic Rehashing

- **Load Factor ($\alpha$):**
  $$\alpha = \frac{n}{k} = \frac{\text{Total Elements}}{\text{Total Bucket Capacity}}$$
- When $\alpha$ breaches a critical threshold (typically $0.75$), the container initiates **Rehashing**: it allocates a new table of size $2 \times k$ and re-hashes every existing key. This amortizes insertions to $O(1)$.

### 3. Ordered vs. Unordered Set / Map Structures

| Feature                     |    `std::unordered_map` (Hash Map)     |        `std::map` (Tree Map)        |
| :-------------------------- | :------------------------------------: | :---------------------------------: |
| **Underlying Architecture** |        Hash Table with Buckets         | Red-Black Tree (Self-Balancing BST) |
| **Lookup / Insert Time**    | **Average:** $O(1)$, **Worst:** $O(N)$ |      **Strictly:** $O(\log N)$      |
| **Ordering of Keys**        |       Unordered (Pseudo-random)        |      Strictly Sorted Ascending      |
| **Key Requirement**         |      Hash function + `operator==`      |       Comparison `operator<`        |

---

## 🎥 Curated Video Lectures

| Topic                                          | Primary Instructor           | Video / Playlist Link                                                                    |
| :--------------------------------------------- | :--------------------------- | :--------------------------------------------------------------------------------------- |
| **Hashing & Hash Tables Complete Theory**      | Abdul Bari                   | [Watch on YouTube](https://www.youtube.com/watch?v=mFY0J5WWC-0)                          |
| **Hash Tables, Sets, and Collision Handling**  | FreeCodeCamp / William Fiset | [Watch on YouTube](https://www.youtube.com/watch?v=RBSGKlAvoiM)                          |
| **Design HashMap from Scratch (LeetCode 706)** | NeetCode                     | [Watch on YouTube](https://www.youtube.com/results?search_query=Design+HashMap+NeetCode) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                                      | Difficulty | Strategy Applied                     |                                                       Solution Walkthrough                                                        |
| :-: | :------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :----------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------: |
|  1  | [Contains Duplicate (LeetCode 217)](https://leetcode.com/problems/contains-duplicate/)                                                       |  🟢 Easy   | Hash Set Cardinality Check           |              [Video Solution](https://www.youtube.com/results?search_query=LeetCode+217+Contains+Duplicate+NeetCode)              |
|  2  | [Ransom Note (LeetCode 383)](https://leetcode.com/problems/ransom-note/)                                                                     |  🟢 Easy   | Character Frequency Hashing          |                 [Video Solution](https://www.youtube.com/results?search_query=LeetCode+383+Ransom+Note+NeetCode)                  |
|  3  | [Group Anagrams (LeetCode 49)](https://leetcode.com/problems/group-anagrams/)                                                                | 🟡 Medium  | Canonical Sorted String as Map Key   |                [Video Solution](https://www.youtube.com/results?search_query=LeetCode+49+Group+Anagrams+NeetCode)                 |
|  4  | [Subarray Sum Equals K (LeetCode 560)](https://leetcode.com/problems/subarray-sum-equals-k/)                                                 | 🟡 Medium  | Prefix Sum + Frequency Hash Map      |             [Video Solution](https://www.youtube.com/results?search_query=LeetCode+560+Subarray+Sum+Equals+K+Striver)             |
|  5  | [Design HashMap (LeetCode 706)](https://leetcode.com/problems/design-hashmap/)                                                               | 🟡 Medium  | Separate Chaining Implementation     |                [Video Solution](https://www.youtube.com/results?search_query=LeetCode+706+Design+HashMap+NeetCode)                |
|  6  | [Longest Substring Without Repeating Characters (LeetCode 3)](https://leetcode.com/problems/longest-substring-without-repeating-characters/) | 🟡 Medium  | Sliding Window + Last Seen Index Map | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+3+Longest+Substring+Without+Repeating+Characters+NeetCode) |
