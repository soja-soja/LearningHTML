# def starPrint(n):
# 	for i in range(n):
# 		print('*' * (i+1))

# starPrint(4)


def search(inputString):
	database = ['john', 'jack', 'adam', 'smith']

	flag = 0 #False
	print('Searched for {}:'.format(inputString))
	
	for name in database:
		# if inputString.lower().strip() == name:
		if inputString.lower().strip() in name:
			# flag = True
			flag +=1
			print('>> {} <<'.format(name))

	if flag ==0:
		print('No result found!')
	else:
		print('found {} users!'.format(flag))

search('jAck')
search('j')
search('         JaCK       ')