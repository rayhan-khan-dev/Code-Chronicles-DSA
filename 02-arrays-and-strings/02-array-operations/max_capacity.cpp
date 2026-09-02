/**
 * Topic: Array Operations (Linear Data Structure)
 * Operations Covered:
 *   1. Traversal: O(N)
 *   2. Insertion (by index): O(N)
 *   3. Deletion (by index): O(N)
 *   4. Linear Search: O(N)
 * Space Complexity: O(1) auxiliary space
 */

#include <iostream>
using namespace std;

const int MAX_CAPACITY = 100;

// Function to print array elements (Traversal)
void printArray(const int arr[], int size)
{
    if (size == 0)
    {
        cout << "Array is empty.\n";
        return;
    }
    cout << "Array elements: [ ";
    for (int i = 0; i < size; ++i)
    {
        cout << arr[i] << " ";
    }
    cout << "]\n";
}

// Function to insert an element at a given index
// Time Complexity: O(N)
bool insertElement(int arr[], int &size, int capacity, int element, int index)
{
    if (size >= capacity)
    {
        cout << "Error: Array is full (Overflow).\n";
        return false;
    }
    if (index < 0 || index > size)
    {
        cout << "Error: Invalid index for insertion.\n";
        return false;
    }

    // Shift elements to the right
    for (int i = size - 1; i >= index; --i)
    {
        arr[i + 1] = arr[i];
    }

    arr[index] = element;
    size++;
    return true;
}

// Function to delete an element from a given index
// Time Complexity: O(N)
bool deleteElement(int arr[], int &size, int index)
{
    if (size <= 0)
    {
        cout << "Error: Array is empty (Underflow).\n";
        return false;
    }
    if (index < 0 || index >= size)
    {
        cout << "Error: Invalid index for deletion.\n";
        return false;
    }

    // Shift elements to the left
    for (int i = index; i < size - 1; ++i)
    {
        arr[i] = arr[i + 1];
    }

    size--;
    return true;
}

// Function to find an element using Linear Search
// Time Complexity: O(N)
int searchElement(const int arr[], int size, int target)
{
    for (int i = 0; i < size; ++i)
    {
        if (arr[i] == target)
        {
            return i; // Returns the index of the element
        }
    }
    return -1; // Not found
}

int main()
{
    int arr[MAX_CAPACITY] = {10, 20, 30, 40, 50};
    int size = 5;

    cout << "--- Initial State ---\n";
    printArray(arr, size);

    cout << "\n--- Inserting 25 at index 2 ---\n";
    insertElement(arr, size, MAX_CAPACITY, 25, 2);
    printArray(arr, size);

    cout << "\n--- Deleting element at index 4 ---\n";
    deleteElement(arr, size, 4);
    printArray(arr, size);

    cout << "\n--- Searching for 25 and 99 ---\n";
    int target = 25;
    int foundIndex = searchElement(arr, size, target);
    if (foundIndex != -1)
    {
        cout << "Element " << target << " found at index: " << foundIndex << "\n";
    }
    else
    {
        cout << "Element " << target << " not found.\n";
    }

    target = 99;
    foundIndex = searchElement(arr, size, target);
    if (foundIndex != -1)
    {
        cout << "Element " << target << " found at index: " << foundIndex << "\n";
    }
    else
    {
        cout << "Element " << target << " not found.\n";
    }

    return 0;
}