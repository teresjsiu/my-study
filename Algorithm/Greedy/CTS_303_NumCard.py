import numpy as np

n, m = map(int, input().split())

cards = []

# 카드 숫자 입력 받기
for _ in range(n):
	row = list(map(int, input().split()))
	cards.append(row)
	
card_array = np.array(cards)

# 각 행의 최소값 구하기
mins = np.min(card_array, axis = 1)

# 그 중 가장 큰 값
result = np.max(mins)

print(result)

