import random

results = []
while len(results) < 7:
    num = random.uniform(6, 12)
    results.append(num)

print(results)