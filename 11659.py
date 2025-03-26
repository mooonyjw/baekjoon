import sys
input = sys.stdin.readline

N, M = map(int, input().split())
# print(N, M)

# 띄어쓰기 단위로 분할해서 저장
# array = list(map(int, input().split())) 
# print(array)

array = list(map(int, input().split()))[:N]

sum_array = []
for i in range(N):
    if i == 0:
        sum_array.append(array[i])
    else:
        sum_array.append(sum_array[i-1] + array[i])

# print(sum_array)
# print(array)

for k in range(M):
    i, j = map(int, input().split())
    if i == 1:
        print(sum_array[j-1])
        continue
    print(sum_array[j-1] - sum_array[i-2])


# import sys
# input = sys.stdin.readline
# suNo, quizNo = map(int, input().split())
# numbers = list(map(int, input().split()))
# prefix_sum = [0]
# temp = 0

# for i in numbers:
#     temp = temp + i
#     prefix_sum.append(temp)

# for i in range(quizNo):
#     s, e = map(int, input().split())
#     print(prefix_sum[e] - prefix_sum[s-1])