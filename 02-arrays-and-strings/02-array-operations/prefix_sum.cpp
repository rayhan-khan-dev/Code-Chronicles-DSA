/**
 * Topic: Prefix Sum (Range Sum Query)
 * Preprocessing Time: O(N)
 * Query Time: O(1)
 * Space Complexity: O(N)
 */

#include <iostream>
#include <vector>
using namespace std;

class PrefixSum
{
private:
    vector<int> pref;

public:
    PrefixSum(const vector<int> &arr)
    {
        int n = arr.size();
        pref.resize(n);
        if (n == 0)
            return;

        pref[0] = arr[0];
        for (int i = 1; i < n; ++i)
        {
            pref[i] = pref[i - 1] + arr[i];
        }
    }

    // Returns sum of arr[L...R] in O(1)
    int query(int L, int R) const
    {
        if (L < 0 || R >= (int)pref.size() || L > R)
            return 0;
        return (L == 0) ? pref[R] : pref[R] - pref[L - 1];
    }
};

int main()
{
    vector<int> arr = {2, 4, 1, 7, 3, 5};
    PrefixSum ps(arr);

    // Queries: [L, R]
    cout << "Sum from index 1 to 3 (4 + 1 + 7): " << ps.query(1, 3) << "\n";
    cout << "Sum from index 0 to 4 (2 + 4 + 1 + 7 + 3): " << ps.query(0, 4) << "\n";

    return 0;
}