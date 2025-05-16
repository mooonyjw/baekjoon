import sys
input = sys.stdin.readline


sum_array = []

N, M = map(int, input().split())
# print(N, M)

array = [[0] * (N+1)]
sum_array = [[0] * (N+1) for i in range (N+1)]

for i in range(N):
    num = list(map(int, input().split()))
    num = [0] + num
    array.append(num)
# print(array)
# print(sum_array)

for i in range(1, N+1):
    for j in range(1, N+1):
        sum_array[i][j] = sum_array[i-1][j] + sum_array[i][j-1] - sum_array[i-1][j-1] + array[i][j]

# print(sum_array)


for i in range(M):
    x1, y1, x2, y2 = list(map(int, input().split()))
    ans = sum_array[x2][y2] - sum_array[x1-1][y2] - sum_array[x2][y1-1] + sum_array[x1-1][y1-1]
    print(ans)
    # for k in range(M):
