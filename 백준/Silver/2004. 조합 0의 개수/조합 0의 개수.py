def count(n, k):
    cnt = 0
    while n:
        n //= k
        cnt += n
    return cnt


n, m = map(int, input().split())

fiveNum = count(n, 5) - count(m, 5) - count(n-m, 5)
twoNum = count(n, 2) - count(m, 2) - count(n-m, 2)

print(min(fiveNum, twoNum))