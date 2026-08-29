# 📌 01. Foundations & Mathematics for Computer Science

Foundations form the absolute bedrock of algorithmic thinking. Before writing complex data structures, an engineer must rigorously understand how computation time scales with input size, how memory allocation functions at the hardware level, and how mathematical properties optimize brute-force constraints.

---

## 🧠 Core Conceptual Breakdown

### 1. Asymptotic Analysis & Big-O Notation

- **Definition:** Mathematical bounds used to describe the limiting behavior of an algorithm's execution time or space usage as the input size $n$ approaches infinity.
- **Key Bounds:**
  - $O(g(n))$ (**Upper Bound / Worst Case**): Represents the maximum resource consumption for any input of size $n$.
  - $\Omega(g(n))$ (**Lower Bound / Best Case**): Represents the theoretical minimum resource consumption.
  - $\Theta(g(n))$ (**Tight Bound / Average Case**): Represents both upper and lower limits when an algorithm behaves symmetrically.
- **Hierarchy of Growth Rates:**
  $$O(1) < O(\log \log n) < O(\log n) < O(\sqrt{n}) < O(n) < O(n \log n) < O(n^2) < O(2^n) < O(n!)$$

### 2. Space Complexity & Auxiliary Space

- **Total Space:** Sum of Input Space + Auxiliary Space.
- **Auxiliary Space:** Temporary memory allocated by the algorithm during execution (e.g., variables, buffers, recursion call stack frames).
- **Call Stack Space:** Recursive calls consume $O(\text{recursion depth})$ stack memory. A stack overflow occurs when recursive depth exceeds stack limits (typically 1MB–8MB in standard execution environments).

### 3. Bit Manipulation & Binary Arithmetic

- Computers process instructions natively in binary. Bitwise operations execute in single CPU cycles ($O(1)$) with near-zero latency.
- **Fundamental Operators:**
  - AND (`&`): Sets bit to 1 if both operands have 1.
  - OR (`|`): Sets bit to 1 if at least one operand is 1.
  - XOR (`^`): Sets bit to 1 if bits are strictly distinct. (Key Property: $x \oplus x = 0$, $x \oplus 0 = x$).
  - NOT (`~`): Flips all bits (two's complement inversion).
  - Left Shift (`<<`): Multiplies by $2^k$ (`x << k` $= x \times 2^k$).
  - Right Shift (`>>`): Divides by $2^k$ (`x >> k` $= \lfloor x / 2^k \rfloor$).
- **Core Bit Manipulation Tricks:**
  - Check if number is odd/even: `(n & 1) != 0` (Odd).
  - Check if number is a power of 2: `(n > 0) && ((n & (n - 1)) == 0)`.
  - Isolate rightmost set bit: `n & (-n)`.
  - Clear rightmost set bit: `n & (n - 1)`.

### 4. Discrete Mathematics & Number Theory

- **Prime Number Verification:** A number $n$ is prime if it has no divisors other than $1$ and itself. Checking divisors up to $\sqrt{n}$ guarantees $O(\sqrt{n})$ complexity.
- **Sieve of Eratosthenes:** Finds all primes up to $n$ in $O(n \log(\log n))$ time by iteratively marking multiples of each discovered prime.
- **Euclidean Algorithm for GCD:** Calculates Greatest Common Divisor in $O(\log(\min(a, b)))$:
  $$\gcd(a, b) = \gcd(b, a \pmod b) \quad \text{where } \gcd(a, 0) = a$$
- **Modular Arithmetic Rules:**
  - $(a + b) \pmod m = ((a \pmod m) + (b \pmod m)) \pmod m$
  - $(a \times b) \pmod m = ((a \pmod m) \times (b \pmod m)) \pmod m$

---

## 🎥 Curated Video Lectures

| Topic                                             | Primary Instructor            | Video / Playlist Link                                                                        |
| :------------------------------------------------ | :---------------------------- | :------------------------------------------------------------------------------------------- |
| **Complete Asymptotic Analysis & Master Theorem** | Abdul Bari                    | [Watch on YouTube](https://www.youtube.com/watch?v=9TlHvipP5yA)                              |
| **Bit Manipulation Complete Playbook**            | Striver (takeUforward)        | [Watch on YouTube](https://www.youtube.com/playlist?list=PLgUwDviBIf0rnqh8QsJaHyIXLSNU04vXx) |
| **Number Theory & Modular Arithmetic for CP**     | Luv (Competitive Programming) | [Watch on YouTube](https://www.youtube.com/playlist?list=PLauivoElc3ggagradg8MfOZreCMmXMmJ-) |
| **Recursion Call Stack & Memory Models**          | FreeCodeCamp / CS Dojo        | [Watch on YouTube](https://www.youtube.com/watch?v=IJDJ0kBx2N8)                              |

---

## 💡 Implementation Strategies & Common Pitfalls

1. **Integer Overflow:** In languages like C++, intermediate multiplication ($a \times b$) can exceed 32-bit integer capacity ($2^{31}-1 \approx 2 \times 10^9$) before the modulo is applied. Always cast to `long long` before multiplying.
2. **Bit Shift Boundary Violations:** Shifting a 32-bit signed integer by 31 or more positions triggers undefined behavior. Use `1ULL << k` when operating on 64-bit boundaries.
3. **Worst-Case Trap in Recursion:** Forgetting base conditions causes infinite recursive loops leading directly to a `Segmentation Fault (Core Dumped)` due to stack exhaustion.

---

## 🎯 Curated Problem Checklist

|  #  | Problem                                                                                              | Difficulty | Core Concept                        |                                         Solution Walkthrough                                          |
| :-: | :--------------------------------------------------------------------------------------------------- | :--------: | :---------------------------------- | :---------------------------------------------------------------------------------------------------: |
|  1  | [Single Number (LeetCode 136)](https://leetcode.com/problems/single-number/)                         |  🟢 Easy   | Bitwise XOR Identity                |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+136+Single+Number+NeetCode)   |
|  2  | [Number of 1 Bits (LeetCode 191)](https://leetcode.com/problems/number-of-1-bits/)                   |  🟢 Easy   | Brian Kernighan's Algorithm         | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+191+Number+of+1+Bits+NeetCode) |
|  3  | [Counting Bits (LeetCode 338)](https://leetcode.com/problems/counting-bits/)                         |  🟢 Easy   | Bit Manipulation + DP               |  [Video Solution](https://www.youtube.com/results?search_query=LeetCode+338+Counting+Bits+NeetCode)   |
|  4  | [Count Primes (LeetCode 204)](https://leetcode.com/problems/count-primes/)                           | 🟡 Medium  | Sieve of Eratosthenes               |   [Video Solution](https://www.youtube.com/results?search_query=LeetCode+204+Count+Primes+Striver)    |
|  5  | [Pow(x, n) (LeetCode 50)](https://leetcode.com/problems/powx-n/)                                     | 🟡 Medium  | Binary Exponentiation ($O(\log n)$) |     [Video Solution](<https://www.youtube.com/results?search_query=LeetCode+50+Pow(x,n)+Striver>)     |
|  6  | [Factorial Trailing Zeroes (LeetCode 172)](https://leetcode.com/problems/factorial-trailing-zeroes/) | 🟡 Medium  | Prime Factorization of 5            | [Video Solution](https://www.youtube.com/results?search_query=LeetCode+172+Factorial+Trailing+Zeroes) |
