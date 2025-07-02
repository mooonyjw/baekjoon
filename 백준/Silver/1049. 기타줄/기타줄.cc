#include <iostream>
#include <algorithm>
using namespace std;

int main(void){
    int n, m;
    cin >> n >> m;

    int* full = new int[m];
    int* select = new int[m];
    for (int i = 0; i < m; i++){
        cin >> full[i] >> select[i];
    }

    // for (int i = 0; i<m; i++){
    //     cout << full[i] << ' ';
    // }
    // cout << "\n";
    // for (int i = 0; i<m; i++){
    //     cout << select[i] << ' ';
    // }
    // cout << "\n";

    int min_full = *min_element(full, full+m);
    int min_select = *min_element(select, select+m);
    if (n <= 6){
        if (min_select*n <= min_full){
            cout << min_select * n << '\n';
            return 0;
        }
        else{
            cout << min_full << '\n';
            return 0;
        }
    }
    int sum = 0;
    sum = (min_select*n < min_full*(n/6) + min_select * (n%6)) ? min_select*n : min_full*(n/6) + min_select * (n%6);
    sum = (sum < min_full * (n/6 +1)) ? sum : min_full * (n/6 +1);
    cout << sum << '\n';
    delete[] full;
    delete[] select;
    return 0;
}