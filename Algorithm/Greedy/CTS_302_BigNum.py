
# 변수 세팅
N, M, K = map(int, input().split())
nums = list(map(int, input(), split()))
count = 0

# nums 내림차순 정렬
nums.sort(reverse = True)

# max, max - 1
first = nums[0]
second = nums[1]
 
# 큰 수의 법칙
## count는 first의 반복 횟수
count = (M // (K+1)) * K
count += M % (K + 1)

# 결과
result = 0
result += count * first
result += (M - count) * second
