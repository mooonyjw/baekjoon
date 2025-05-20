T = int(input())
for i in range(T):
    cnt = 0
    arr1 = [False] * 10

    number = int(input())
    while (number != 0):
        a = number % 10
        # print("a: ", a)
        arr1[a] = True
        number = int(number / 10)
        # print("number: ", number)
        # print("arr: ", arr1)
    for i in arr1:
        if (i == True):
            cnt += 1
    print(cnt)