# Big O Cheat Sheet

| Notation | Name | Example |
|----------|------|---------|
| O(1) | Constant | Hash map lookup |
| O(log n) | Logarithmic | Binary search |
| O(n) | Linear | Single loop |
| O(n log n) | Linearithmic | Merge sort |
| O(n²) | Quadratic | Nested loops |
| O(2ⁿ) | Exponential | Naive Fibonacci recursion |
| O(n!) | Factorial | Permutations |

## Rules of thumb
- Drop constants: O(2n) -> O(n)
- Drop lower terms: O(n² + n) -> O(n²)
- Different inputs use different variables: O(a + b) not O(n)

## Data structure operations

| Structure | Access | Search | Insert | Delete |
|-----------|--------|--------|--------|--------|
| Array | O(1) | O(n) | O(n) | O(n) |
| Hash map | - | O(1)* | O(1)* | O(1)* |
| BST (balanced) | O(log n) | O(log n) | O(log n) | O(log n) |
| Heap | - | O(n) | O(log n) | O(log n) |

*amortized

## Practice
[problem-solving/algorithms-data-structures/](../problem-solving/algorithms-data-structures/)
