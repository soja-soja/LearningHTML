# >> LOOP:
# print('===== Loop ====')
# a = 4
# # for i in range(a):
# #   print('{}-A'.format(i))

# while a>0:
#   print(a)
#   a= a-1


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
  a = int(input('please enter A:'))
  b = int(input('please enter B:'))
  oprt = input('enter the operator:')
  
  result = Calculation(a,b,oprt)
  if  result != '!':
    print(result)
  else:
      break # flag = False
print('End!')


