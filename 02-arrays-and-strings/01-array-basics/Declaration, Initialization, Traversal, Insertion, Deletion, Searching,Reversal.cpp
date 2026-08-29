#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
    // 1. Array Declaration & Initialization
    int arr[10] = {10, 20, 30, 40, 50}; // Fixed capacity of 10
    int size = 5;                       // Current number of elements

    // 2. Traversal: Print all elements
    cout << "Initial Array Elements: ";
    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << " ";
    }
    cout << "\n";

    // 3. Direct Access & Modification (O(1) Complexity)
    cout << "Element at index 2: " << arr[2] << "\n";
    arr[2] = 99; // Update value at index 2
    cout << "After update, element at index 2: " << arr[2] << "\n";

    // 4. Insertion: Insert 25 at index 2 (O(N) Complexity)
    int insert_idx = 2;
    int insert_val = 25;
    for (int i = size; i > insert_idx; i--)
    {
        arr[i] = arr[i - 1]; // Shift elements right
    }
    arr[insert_idx] = insert_val;
    size++;

    cout << "After insertion: ";
    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << " ";
    }
    cout << "\n";

    // 5. Deletion: Delete element at index 3 (O(N) Complexity)
    int delete_idx = 3;
    for (int i = delete_idx; i < size - 1; i++)
    {
        arr[i] = arr[i + 1]; // Shift elements left
    }
    size--;

    cout << "After deletion: ";
    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << " ";
    }
    cout << "\n";

    // 6. Linear Search: Search for a target element (O(N) Complexity)
    int target = 40;
    int found_idx = -1;
    for (int i = 0; i < size; i++)
    {
        if (arr[i] == target)
        {
            found_idx = i;
            break;
        }
    }
    if (found_idx != -1)
    {
        cout << "Element " << target << " found at index: " << found_idx << "\n";
    }
    else
    {
        cout << "Element not found\n";
    }

    // 7. Array Reversal (Two Pointers Technique - O(N) Time, O(1) Space)
    int left = 0, right = size - 1;
    while (left < right)
    {
        swap(arr[left], arr[right]);
        left++;
        right--;
    }

    cout << "Reversed Array: ";
    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << " ";
    }
    cout << "\n";

    return 0;
}