N = int(input())
scores = []
max = 0
sum = 0

scores = list(map(int, input().split()))

for i in range (N):
    if scores[i] > max:
        max = scores[i]

for i in range (N):
    scores[i] = scores[i] / max * 100
    sum += scores[i]

print(sum / N)

# n = input()
# scores = list(map(int, input().split()))
# max = max(scores)
# sum = sum(scores)
# print(sum * 100 / max / int(n))