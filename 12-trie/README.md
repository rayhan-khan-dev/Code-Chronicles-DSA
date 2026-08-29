# 📌 12. Trie (Prefix Tree)

A Trie (derived from re**TRIE**val) is a tree-based search structure used for efficient prefix matching, dynamic string storage, and auto-completion engines. Instead of comparing whole keys, it traverses strings character-by-character along edge paths.

---

## 🧠 Core Conceptual Breakdown

### 1. Structural Architecture

- **Root Node:** Empty root representing an empty string prefix.
- **Node Anatomy:** Each Trie node contains:
  1. An array or hash map of pointers to children nodes (`children[26]` for lowercase Latin characters).
  2. A boolean flag (`isEndOfWord`) designating whether the current node terminates a registered word.
  3. Optional counter variables (`prefixCount`) to count words sharing the node's prefix in O(1) time.

```text
struct TrieNode:
    children[26] -> Pointers to next TrieNodes
    isEndOfWord  -> Boolean flag
    prefixCount  -> Integer counter
```

### 2. Prefix Matching Advantage

- Comparing strings of length L in a Hash Map requires O(L) hashing and equality verification, but Hash Maps **cannot query prefixes** efficiently (O(N \* L) scan required).
- A Trie executes prefix search (`startsWith(prefix)`) and exact search (`search(word)`) in strictly O(L) time, independent of the total number of words N stored in the dataset.

### 3. Bitwise XOR Trie (Binary Trie)

- Specialization where strings are replaced with 32-bit binary representations of integers (`0` and `1` children paths).
- Used to solve **Maximum XOR Pair** queries in O(32 \* N) = O(N) time by greedily branching into the opposite bit at each level.

---

## ⏱️ Operation Complexity Matrix

| Operation                        |      Trie (Prefix Tree)       | Hash Table / Set | Sorted Array (Binary Search) |
| :------------------------------- | :---------------------------: | :--------------: | :--------------------------: |
| **Insert Word of length L**      |             O(L)              |       O(L)       |          O(N \* L)           |
| **Exact Word Search**            |             O(L)              |   O(L) Average   |          O(L log N)          |
| **Prefix Search (`startsWith`)** |             O(L)              |    O(N \* L)     |          O(L log N)          |
| **Space Overhead**               | High (O(L \* Sigma) per node) |     Moderate     |             Low              |

_(Where L = Length of string, Sigma = Alphabet Size, e.g., 26)_

---

## 🎥 Curated Video Lectures

| Topic                                           | Primary Instructor     | Video / Playlist Link                                                                                                |
| :---------------------------------------------- | :--------------------- | :------------------------------------------------------------------------------------------------------------------- |
| **Trie Data Structure Complete Playlist**       | Striver (takeUforward) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0pcIDCZnxhv0LkZ5KzQ9zpP)                         |
| **Implement Trie (Prefix Tree) & Applications** | NeetCode               | [Watch on YouTube](https://www.youtube.com/watch?v=oobqoCJlHA0)                                                      |
| **Maximum XOR with Trie (Advanced Concept)**    | Striver / Luv          | [Watch on YouTube](https://www.youtube.com/results?search_query=Maximum+XOR+of+Two+Numbers+in+an+Array+Trie+Striver) |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                                | Difficulty | Variation                                  |                                                      Solution Walkthrough                                                       |
| :-: | :------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :----------------------------------------- | :-----------------------------------------------------------------------------------------------------------------------------: |
|  1  | [Implement Trie / Prefix Tree (LeetCode 208)](https://leetcode.com/problems/implement-trie-prefix-tree/)                               | 🟡 Medium  | Standard 26-Way Array Implementation       |               [Video Solution](https://www.youtube.com/results?search_query=LeetCode+208+Implement+Trie+NeetCode)               |
|  2  | [Design Add and Search Words Data Structure (LeetCode 211)](https://leetcode.com/problems/design-add-and-search-words-data-structure/) | 🟡 Medium  | Wildcard `.` Traversal via Backtracking    | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+211+Design+Add+and+Search+Words+Data+Structure+NeetCode) |
|  3  | [Word Search II (LeetCode 212)](https://leetcode.com/problems/word-search-ii/)                                                         |  🔴 Hard   | 2D Grid Backtracking + Trie Prefix Pruning |               [Video Solution](https://www.youtube.com/results?search_query=LeetCode+212+Word+Search+II+NeetCode)               |
|  4  | [Maximum XOR of Two Numbers in an Array (LeetCode 421)](https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/)         | 🟡 Medium  | Binary Bitwise Trie (Greedy Bit Selection) |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+421+Maximum+XOR+of+Two+Numbers+in+an+Array+Striver)    |
|  5  | [Replace Words (LeetCode 648)](https://leetcode.com/problems/replace-words/)                                                           | 🟡 Medium  | Root/Prefix Replacement Lookup             |               [Video Solution](https://www.youtube.com/results?search_query=LeetCode+648+Replace+Words+Solution)                |
