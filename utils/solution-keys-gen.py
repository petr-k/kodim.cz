import sys, random, base64, pprint

def gen_key(size):
	key_bytes = random.getrandbits(size * 8).to_bytes(size, byteorder='big')
	return base64.urlsafe_b64encode(key_bytes).decode('ascii')

key_size = int(sys.argv[1])
num = int(sys.argv[2])

result = []
for _ in range(num):
	print(f'"exkey": "{gen_key(key_size)}",')
	print(f'"hwkey": "{gen_key(key_size)}"\n')
	
