a = [6,6,7,9,0,9]

print(len(a))
print(range(len(a)))
print('List elements:')
# for i in range( len(a) ):
#   print(a[i])
  
# for i in range(len(a), 0, -1):
#   print(a[i])
  
for i in range(len(a)):
  print(a[len(a)-i-1])

exit()

def preProcess(ui):
  ui = ui.split(' ')
  a = int(ui[0])
  b = int(ui[2])
  oprt = ui[1]
  return a,b,oprt
  
  
  
# print('You entered: {} {} {}'.format(a,oprt,b))

# exit()
# b = a.split(' ') # list ['This', 'is', 'a' , ....]
# #                           0     1     2  ,  N-1

# number_of_words = len(b) # length 
# print('# of words in this sentence: {}'.format( number_of_words))
# print('The first word is: {}'.format(b[2]))

# exit()






# def Sum(a, b):
#   return a+b
# def minus(a, b):
#   return a-b
  
def Calculation(a,b,operator): # Function
  if operator == '+':
    return a+b
  elif operator == '-':
    return a-b
  elif operator == '/':
    return a/b
  elif operator == '*':
    return a*b
  elif operator == '%':
    return a%b
  else:
    return '!'


flag = True # boolean variable: 0: False , 1: True
while flag:
  # a = int(input('please enter A:'))
  # b = int(input('please enter B:'))
  # oprt = input('enter the operator:')
  
  ui = input('>>')
  a,b, oprt = preProcess(ui)
  
  result = Calculation(a,b,oprt)
  if  result != '!':
    print(result)
  else:
      break # flag = False
print('End!')














