/**
 * Topic: Dynamic Array (Custom Vector Implementation)
 * Operations:
 *   1. Push Back: O(1) amortized
 *   2. Pop Back: O(1)
 *   3. Get / Set by Index: O(1)
 * Space Complexity: O(N)
 */

#include <iostream>
using namespace std;

class DynamicArray
{
private:
    int *data;
    int capacity;
    int size;

    void resize(int newCapacity)
    {
        int *temp = new int[newCapacity];
        for (int i = 0; i < size; ++i)
        {
            temp[i] = data[i];
        }
        delete[] data;
        data = temp;
        capacity = newCapacity;
    }

public:
    DynamicArray(int initialCapacity = 2)
    {
        capacity = initialCapacity;
        size = 0;
        data = new int[capacity];
    }

    ~DynamicArray()
    {
        delete[] data;
    }

    void push_back(int element)
    {
        if (size == capacity)
        {
            resize(capacity * 2);
        }
        data[size++] = element;
    }

    void pop_back()
    {
        if (size == 0)
        {
            cout << "Array is already empty.\n";
            return;
        }
        size--;
    }

    int get(int index) const
    {
        if (index < 0 || index >= size)
        {
            cout << "Index out of bounds.\n";
            return -1;
        }
        return data[index];
    }

    int getSize() const
    {
        return size;
    }

    int getCapacity() const
    {
        return capacity;
    }

    void print() const
    {
        cout << "Elements: [ ";
        for (int i = 0; i < size; ++i)
        {
            cout << data[i] << " ";
        }
        cout << "] | Size: " << size << " | Capacity: " << capacity << "\n";
    }
};

int main()
{
    DynamicArray arr;

    cout << "--- Pushing Elements ---\n";
    arr.push_back(5);
    arr.print();

    arr.push_back(10);
    arr.print();

    // Capacity automatically doubles here
    arr.push_back(30);
    arr.print();

    arr.push_back(40);
    arr.push_back(50);
    arr.print();

    cout << "\n--- Popping Element ---\n";
    arr.pop_back();
    arr.print();

    cout << "\n--- Accessing Element ---\n";
    cout << "Element at index 2: " << arr.get(2) << "\n";

    return 0;
}