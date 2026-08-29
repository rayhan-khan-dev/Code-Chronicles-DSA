# 📌 19. Advanced String Algorithms

Advanced string algorithms solve pattern searching, substring indexing, string matching, and lexicographical operations efficiently. While brute-force pattern matching requires $O(N \times M)$ comparisons, specialized algorithms precompute auxiliary tables to achieve optimal linear $O(N + M)$ search time.

---

## 🧠 Core Conceptual Breakdown

### 1. The Exact Substring Search Problem

- Given text $T$ of length $N$ and pattern $P$ of length $M$:
  - **Brute Force:** Shift pattern one by one; worst-case time $O(N \times M)$ on repetitive strings (e.g., $T = \text{"AAAAA"}$, $P = \text{"AAA"}$).
  - **Optimal Target:** Linear time $O(N + M)$ with $O(1)$ to $O(M)$ extra memory.

### 2. Knuth-Morris-Pratt (KMP) Algorithm

- **Core Idea:** When a mismatch occurs, use the pattern's self-symmetry to avoid backtracking the main text pointer.
- **$\pi$ / LPS Array (Longest Proper Prefix which is also Suffix):**
  - $\text{LPS}[i]$ stores the length of the longest proper prefix of $P[0 \dots i]$ that is also a suffix of $P[0 \dots i]$.
  - Precomputation time: $O(M)$.
  - Matching time: $O(N)$.
  - Overall Time: $O(N + M)$ with $O(M)$ auxiliary space.

### 3. Rabin-Karp Algorithm (Rolling Hash)

- **Core Idea:** Treat substrings as numeric hash values. Instead of recomputing hashes from scratch in $O(M)$, compute the hash of the sliding window in $O(1)$ using polynomial rolling hash:
  $$\text{Hash}(S[i+1 \dots i+M]) = (\text{Hash}(S[i \dots i+M-1]) - S[i] \cdot B^{M-1}) \cdot B + S[i+M] \pmod P$$
  _(Where $B$ is base, e.g., 31 or 53, and $P$ is a large prime, e.g., $10^9+7$)_
- **Average Time:** $O(N + M)$; **Worst Case (Hash Collisions):** $O(N \times M)$ (Mitigated via Double Hashing).

### 4. Z-Algorithm

- Constructs the **$Z$-array** where $Z[i]$ represents the length of the longest common prefix between $S$ and the suffix of $S$ starting at index $i$.
- Concatenating $\text{Pattern} + \text{"#"} + \text{Text}$ and running the Z-algorithm finds all occurrences in $O(N + M)$ linear time.

### 5. Manacher's Algorithm (Palindromic Substrings)

- Finds the longest palindromic substring in strictly $O(N)$ time by transforming even/odd palindromes with delimiter characters (`#`) and leveraging symmetry around the current palindromic center.

---

## ⏱️ Complexity Comparison Matrix

| Algorithm                | Preprocessing Time |   Search Time   | Auxiliary Space | Best Use Case                                |
| :----------------------- | :----------------: | :-------------: | :-------------: | :------------------------------------------- |
| **Brute Force Match**    |       $O(1)$       | $O(N \times M)$ |     $O(1)$      | Very short strings ($M \le 5$)               |
| **KMP Algorithm**        |       $O(M)$       |     $O(N)$      |     $O(M)$      | Single pattern search, Stream data           |
| **Rabin-Karp**           |       $O(M)$       |   $O(N)$ Avg    |     $O(1)$      | Multiple pattern search, 2D pattern matching |
| **Z-Algorithm**          |     $O(N + M)$     |  $O(1)$ post Z  |   $O(N + M)$    | Pattern matching, Periodic prefix/suffix     |
| **Manacher's Algorithm** |       $O(N)$       |     $O(N)$      |     $O(N)$      | Longest palindromic substring                |

---

## 🎥 Curated Video Lectures

| Topic                                          | Primary Instructor    | Video / Playlist Link                                                                        |
| :--------------------------------------------- | :-------------------- | :------------------------------------------------------------------------------------------- |
| **KMP Algorithm & LPS Array Intuition**        | Abdul Bari            | [Watch on YouTube](https://www.youtube.com/watch?v=V5-7GzOfADQ)                              |
| **Rabin-Karp Algorithm & Rolling Hash Math**   | Abdul Bari            | [Watch on YouTube](https://www.youtube.com/watch?v=qQ8vS2btsxI)                              |
| **Z-Algorithm Explained with Code**            | Tushar Roy / Striver  | [Watch on YouTube](https://www.youtube.com/results?search_query=Z+Algorithm+String+Matching) |
| **String Hashing for Competitive Programming** | Luv (C++ CP Playlist) | [Watch on YouTube](https://www.youtube.com/watch?v=0k_2k3bXk8c)                              |

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                                                                               | Difficulty | Algorithm Applied                                   |                                                    Solution Walkthrough                                                    |
| :-: | :---------------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :-------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------: |
|  1  | [Find the Index of the First Occurrence in a String (LeetCode 28)](https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/) |  🟢 Easy   | KMP / Rolling Hash                                  | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+28+Find+the+Index+of+the+First+Occurrence+NeetCode) |
|  2  | [Repeated DNA Sequences (LeetCode 187)](https://leetcode.com/problems/repeated-dna-sequences/)                                                        | 🟡 Medium  | Rolling Hash / Bitmask Window                       |        [Video Solution](https://www.youtube.com/results?search_query=LeetCode+187+Repeated+DNA+Sequences+NeetCode)         |
|  3  | [Longest Palindromic Substring (LeetCode 5)](https://leetcode.com/problems/longest-palindromic-substring/)                                            | 🟡 Medium  | Expand Around Center / Manacher's                   |      [Video Solution](https://www.youtube.com/results?search_query=LeetCode+5+Longest+Palindromic+Substring+NeetCode)      |
|  4  | [Shortest Palindrome (LeetCode 214)](https://leetcode.com/problems/shortest-palindrome/)                                                              |  🔴 Hard   | KMP (LPS table on $S + \text{"#"} + \text{rev}(S)$) |          [Video Solution](https://www.youtube.com/results?search_query=LeetCode+214+Shortest+Palindrome+Solution)          |
|  5  | [Longest Duplicate Substring (LeetCode 1044)](https://leetcode.com/problems/longest-duplicate-substring/)                                             |  🔴 Hard   | Binary Search on Answer + Rabin-Karp                |     [Video Solution](https://www.youtube.com/results?search_query=LeetCode+1044+Longest+Duplicate+Substring+Solution)      |
