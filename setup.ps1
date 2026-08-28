# ==========================================
# Code-Chronicles-DSA
# DSA Mastery Repository Structure
# ==========================================

$folders = @(
    # 01 Foundations
    "01-foundations/01-time-and-space-complexity",
    "01-foundations/02-asymptotic-analysis",
    "01-foundations/03-recursion-basics",
    "01-foundations/04-pointers-and-memory",
    "01-foundations/05-bit-manipulation",
    "01-foundations/06-mathematical-foundations/01-gcd-and-lcm",
    "01-foundations/06-mathematical-foundations/02-prime-numbers",
    "01-foundations/06-mathematical-foundations/03-sieve-of-eratosthenes",
    "01-foundations/06-mathematical-foundations/04-modular-arithmetic",
    "01-foundations/06-mathematical-foundations/05-fast-exponentiation",
    "01-foundations/06-mathematical-foundations/06-combinatorics",

    # 02 Arrays and Strings
    "02-arrays-and-strings/01-array-basics",
    "02-arrays-and-strings/02-array-operations",
    "02-arrays-and-strings/03-multi-dimensional-arrays",
    "02-arrays-and-strings/04-prefix-sum",
    "02-arrays-and-strings/05-difference-array",
    "02-arrays-and-strings/06-kadane-algorithm",
    "02-arrays-and-strings/07-string-basics",
    "02-arrays-and-strings/08-string-manipulation",
    "02-arrays-and-strings/09-frequency-and-counting",

    # 03 Linked Lists
    "03-linked-lists/01-singly-linked-list",
    "03-linked-lists/02-doubly-linked-list",
    "03-linked-lists/03-circular-linked-list",
    "03-linked-lists/04-insertion-and-deletion",
    "03-linked-lists/05-reversal",
    "03-linked-lists/06-fast-and-slow-pointers",
    "03-linked-lists/07-cycle-detection",
    "03-linked-lists/08-list-intersection",
    "03-linked-lists/09-advanced-problems",

    # 04 Stacks and Queues
    "04-stacks-and-queues/01-stack",
    "04-stacks-and-queues/02-queue",
    "04-stacks-and-queues/03-circular-queue",
    "04-stacks-and-queues/04-deque",
    "04-stacks-and-queues/05-priority-queue",
    "04-stacks-and-queues/06-monotonic-stack",
    "04-stacks-and-queues/07-monotonic-queue",
    "04-stacks-and-queues/08-expression-evaluation",
    "04-stacks-and-queues/09-stack-and-queue-problems",

    # 05 Hashing
    "05-hashing/01-hash-table",
    "05-hashing/02-hash-map",
    "05-hashing/03-hash-set",
    "05-hashing/04-frequency-counting",
    "05-hashing/05-prefix-hashing",
    "05-hashing/06-hashing-problems",

    # 06 Searching
    "06-searching/01-linear-search",
    "06-searching/02-binary-search",
    "06-searching/03-first-and-last-occurrence",
    "06-searching/04-search-in-rotated-array",
    "06-searching/05-binary-search-on-answer",
    "06-searching/06-ternary-search",
    "06-searching/07-searching-problems",

    # 07 Sorting
    "07-sorting/01-bubble-sort",
    "07-sorting/02-selection-sort",
    "07-sorting/03-insertion-sort",
    "07-sorting/04-merge-sort",
    "07-sorting/05-quick-sort",
    "07-sorting/06-heap-sort",
    "07-sorting/07-counting-sort",
    "07-sorting/08-radix-sort",
    "07-sorting/09-bucket-sort",
    "07-sorting/10-sorting-problems",

    # 08 Two Pointers and Sliding Window
    "08-two-pointers-and-sliding-window/01-two-pointers",
    "08-two-pointers-and-sliding-window/02-opposite-direction",
    "08-two-pointers-and-sliding-window/03-same-direction",
    "08-two-pointers-and-sliding-window/04-fixed-size-window",
    "08-two-pointers-and-sliding-window/05-variable-size-window",
    "08-two-pointers-and-sliding-window/06-frequency-window",
    "08-two-pointers-and-sliding-window/07-problems",

    # 09 Recursion and Backtracking
    "09-recursion-and-backtracking/01-recursion-fundamentals",
    "09-recursion-and-backtracking/02-recursion-tree",
    "09-recursion-and-backtracking/03-subsets",
    "09-recursion-and-backtracking/04-subsequences",
    "09-recursion-and-backtracking/05-permutations",
    "09-recursion-and-backtracking/06-combinations",
    "09-recursion-and-backtracking/07-n-queens",
    "09-recursion-and-backtracking/08-sudoku-solver",
    "09-recursion-and-backtracking/09-backtracking-problems",

    # 10 Trees
    "10-trees/01-binary-tree",
    "10-trees/02-tree-traversals/01-preorder",
    "10-trees/02-tree-traversals/02-inorder",
    "10-trees/02-tree-traversals/03-postorder",
    "10-trees/02-tree-traversals/04-level-order",
    "10-trees/03-tree-height-and-depth",
    "10-trees/04-tree-diameter",
    "10-trees/05-lowest-common-ancestor",
    "10-trees/06-tree-views",
    "10-trees/07-binary-search-tree",
    "10-trees/08-avl-tree",
    "10-trees/09-tree-problems",

    # 11 Heaps and Priority Queues
    "11-heaps-and-priority-queues/01-min-heap",
    "11-heaps-and-priority-queues/02-max-heap",
    "11-heaps-and-priority-queues/03-heapify",
    "11-heaps-and-priority-queues/04-build-heap",
    "11-heaps-and-priority-queues/05-priority-queue",
    "11-heaps-and-priority-queues/06-top-k-pattern",
    "11-heaps-and-priority-queues/07-heap-problems",

    # 12 Trie
    "12-trie/01-trie-basics",
    "12-trie/02-insert-and-search",
    "12-trie/03-prefix-search",
    "12-trie/04-word-search",
    "12-trie/05-binary-trie",
    "12-trie/06-trie-problems",

    # 13 DSU
    "13-disjoint-set-union/01-dsu-basics",
    "13-disjoint-set-union/02-path-compression",
    "13-disjoint-set-union/03-union-by-rank",
    "13-disjoint-set-union/04-union-by-size",
    "13-disjoint-set-union/05-dsu-problems",

    # 14 Graphs
    "14-graphs/01-graph-basics",
    "14-graphs/02-adjacency-list",
    "14-graphs/03-adjacency-matrix",
    "14-graphs/04-directed-graph",
    "14-graphs/05-undirected-graph",
    "14-graphs/06-weighted-graph",
    "14-graphs/07-graph-problems",

    # 15 Graph Traversal
    "15-graph-traversal/01-bfs",
    "15-graph-traversal/02-dfs",
    "15-graph-traversal/03-connected-components",
    "15-graph-traversal/04-cycle-detection",
    "15-graph-traversal/05-bipartite-graph",
    "15-graph-traversal/06-traversal-problems",

    # 16 Graph Algorithms
    "16-graph-algorithms/01-topological-sort/01-dfs-method",
    "16-graph-algorithms/01-topological-sort/02-kahns-algorithm",
    "16-graph-algorithms/02-shortest-path/01-bfs-shortest-path",
    "16-graph-algorithms/02-shortest-path/02-dijkstra",
    "16-graph-algorithms/02-shortest-path/03-bellman-ford",
    "16-graph-algorithms/02-shortest-path/04-floyd-warshall",
    "16-graph-algorithms/03-minimum-spanning-tree/01-kruskal",
    "16-graph-algorithms/03-minimum-spanning-tree/02-prim",
    "16-graph-algorithms/04-strongly-connected-components/01-kosaraju",
    "16-graph-algorithms/04-strongly-connected-components/02-tarjan",
    "16-graph-algorithms/05-network-flow",
    "16-graph-algorithms/06-bipartite-matching",

    # 17 Greedy
    "17-greedy-algorithms/01-greedy-fundamentals",
    "17-greedy-algorithms/02-activity-selection",
    "17-greedy-algorithms/03-interval-scheduling",
    "17-greedy-algorithms/04-fractional-knapsack",
    "17-greedy-algorithms/05-huffman-coding",
    "17-greedy-algorithms/06-job-sequencing",
    "17-greedy-algorithms/07-greedy-problems",

    # 18 Dynamic Programming
    "18-dynamic-programming/01-dp-fundamentals",
    "18-dynamic-programming/02-memoization",
    "18-dynamic-programming/03-tabulation",
    "18-dynamic-programming/04-1d-dp",
    "18-dynamic-programming/05-2d-dp",
    "18-dynamic-programming/06-grid-dp",
    "18-dynamic-programming/07-knapsack",
    "18-dynamic-programming/08-subsequence-dp",
    "18-dynamic-programming/09-longest-common-subsequence",
    "18-dynamic-programming/10-longest-increasing-subsequence",
    "18-dynamic-programming/11-interval-dp",
    "18-dynamic-programming/12-tree-dp",
    "18-dynamic-programming/13-bitmask-dp",
    "18-dynamic-programming/14-dp-problems",

    # 19 String Algorithms
    "19-string-algorithms/01-string-pattern-matching",
    "19-string-algorithms/02-kmp",
    "19-string-algorithms/03-rabin-karp",
    "19-string-algorithms/04-z-algorithm",
    "19-string-algorithms/05-string-hashing",
    "19-string-algorithms/06-string-problems",

    # 20 Advanced Data Structures
    "20-advanced-data-structures/01-segment-tree",
    "20-advanced-data-structures/02-lazy-propagation",
    "20-advanced-data-structures/03-fenwick-tree",
    "20-advanced-data-structures/04-sparse-table",
    "20-advanced-data-structures/05-ordered-set",
    "20-advanced-data-structures/06-advanced-ds-problems",

    # 21 Advanced Algorithms
    "21-advanced-algorithms/01-divide-and-conquer",
    "21-advanced-algorithms/02-meet-in-the-middle",
    "21-advanced-algorithms/03-sweep-line",
    "21-advanced-algorithms/04-line-sweep",
    "21-advanced-algorithms/05-randomized-algorithms",
    "21-advanced-algorithms/06-advanced-problems",

    # 22 Problem Solving Patterns
    "22-problem-solving-patterns/01-prefix-sum",
    "22-problem-solving-patterns/02-two-pointers",
    "22-problem-solving-patterns/03-sliding-window",
    "22-problem-solving-patterns/04-fast-and-slow-pointers",
    "22-problem-solving-patterns/05-binary-search-pattern",
    "22-problem-solving-patterns/06-monotonic-stack",
    "22-problem-solving-patterns/07-top-k-elements",
    "22-problem-solving-patterns/08-merge-intervals",
    "22-problem-solving-patterns/09-cyclic-sort",
    "22-problem-solving-patterns/10-backtracking",
    "22-problem-solving-patterns/11-greedy",
    "22-problem-solving-patterns/12-dynamic-programming",
    "22-problem-solving-patterns/13-graph-patterns",

    # 23 Competitive Programming
    "23-competitive-programming/01-number-theory",
    "23-competitive-programming/02-combinatorics",
    "23-competitive-programming/03-bitwise",
    "23-competitive-programming/04-data-structures",
    "23-competitive-programming/05-graphs",
    "23-competitive-programming/06-dp",
    "23-competitive-programming/07-geometry",
    "23-competitive-programming/08-contest-solutions",

    # 24 Interview Preparation
    "24-interview-preparation/01-easy",
    "24-interview-preparation/02-medium",
    "24-interview-preparation/03-hard",
    "24-interview-preparation/04-top-interview-questions",
    "24-interview-preparation/05-company-wise",
    "24-interview-preparation/06-mock-interviews",

    # 25 Curated Problem Sets
    "25-curated-problem-sets/01-blind-75",
    "25-curated-problem-sets/02-neetcode-150",
    "25-curated-problem-sets/03-striver-sde-sheet",
    "25-curated-problem-sets/04-leetcode-top-150",
    "25-curated-problem-sets/05-custom-mastery-set",

    # 26 Coding Projects
    "26-coding-projects/01-custom-vector",
    "26-coding-projects/02-custom-hash-map",
    "26-coding-projects/03-custom-linked-list",
    "26-coding-projects/04-lru-cache",
    "26-coding-projects/05-mini-search-engine",
    "26-coding-projects/06-graph-visualizer",

    # 27 Resources
    "27-resources"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host " Code-Chronicles-DSA structure created!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Total folders created: $($folders.Count)" -ForegroundColor Cyan
Write-Host ""