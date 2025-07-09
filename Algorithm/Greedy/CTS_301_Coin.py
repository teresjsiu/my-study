## CHP 03 - 01 Greedy

n = int(input())
coin_num = 0

coin_types = [500, 100, 50, 10]

for coin in coin_types:
    coin_num += n // coin ## 각각의 동전 단위 별로 n을 나눈 몫 
    n %= coin ## 각각의 동전 단위 별로 n을 나눈 후 나머지

print(coin_num)
