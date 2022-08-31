import itertools
import os

chars = input("All the characters to use in password")
pass_length = input("Minimum length of password")
max_length = input("Max length of password")
pass_length = int(pass_length)
max_length = int(max_length)
while(pass_length < max_length):
	for xs in itertools.product(chars, repeat=pass_length):
		file = open("pass.txt","w")
		file.write(''.join(xs))
		file.write('\n')
		file.close
		os_command = 'powershell pass.ps1'
		os.system(os_command)
	pass_length = pass_length +1