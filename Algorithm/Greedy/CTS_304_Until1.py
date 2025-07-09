N, K = map(int, input().split())
count = 0

while N >= K:
    # N이 K로 나누어 떨어지지 않을 때 가장 가까운 K로 나누어 떨어지는 수로 만듦
    remainder = N % K
    if remainder != 0: 
        N -= remainder
        count += remainder

    # N이 K로 나누어 떨어지면 나눔
    if N >= K:
        N //= K
        count += 1

# 나누기를 마친 후 남은 N이 1보다 크면 1이 될 때까지 1씩 빼기
if N > 1:
    count += (N - 1)

print(count)
