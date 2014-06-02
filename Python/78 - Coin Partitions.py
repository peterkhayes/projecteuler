input = 5

cache = [];

def calcPartitions(n, maxChunkSize):
  try:
    cache[n][maxChunkSize]
  except:
    cache[n] = []

  if cache[n] and cache[n][maxChunkSize]:
    return cache[n][maxChunkSize]
  elif (n < 2):
    return 1
  elif (maxChunkSize == 1):
    return 1
  total = 0
  for i in range(1, min(n, maxChunkSize)):
    total += calcPartitions(n - i, Math.min(i, maxChunkSize))

  cache[n][maxChunkSize] = total
  return total

# for (var x = 10; calcPartitions(x, x) % 10 !== 0; x++);

print calcPartitions(input, input)
