valid = 0
num_type = 0 #1-hex, 2-bin, 3-dec

h_num = ""
b_num = ""
d_num = ""

valid_hex = [str(i) for i in range(10)] + ['A', 'B', 'C', 'D', 'E', 'F']
valid_bin = [str(i) for i in range(2)]
valid_dec = [str(i) for i in range(10)]

#conversion functions
def dec_to_hex_conv(h_num, d_num):
  h_num = hex(int(d_num))
  h_num = h_num[2:]
  return(h_num)

def hex_to_dec_conv(h_num, d_num):
  d_num = str(int(h_num, 16))
  return(d_num)

def bin_to_dec_conv(b_num, d_num):
  d_num = str(int(b_num, 2))
  return(d_num)

def hex_to_bin_conv(h_num, b_num):
  b_num = ""
  for char in h_num:
    if char == '0':
      b_num += '0000'
    elif char == '1':
      b_num += '0001'
    elif char == '2':
      b_num += '0010'
    elif char == '3':
      b_num += '0011'
    elif char == '4':
      b_num += '0100'
    elif char == '5':
      b_num += '0101'
    elif char == '6':
      b_num += '0110'
    elif char == '7':
      b_num += '0111'
    elif char == '8':
      b_num += '1000'
    elif char == '9':
      b_num += '1001'
    elif char == 'A':
      b_num += '1010'
    elif char == 'B':
      b_num += '1011'
    elif char == 'C':
      b_num += '1100'
    elif char == 'D':
      b_num += '1101'
    elif char == 'E':
      b_num += '1110'
    elif char == 'F':
      b_num += '1111'
  return(b_num)

# ask user for input and validity
while valid == 0:
  print ("Enter a number in the format of one of the below: ")
  print ("  hexadecimal(0x#) > 0-9, A-F \n  binary(0b#) > 0-1 \n  decimal(#) > whole numbers")
  og_num = input ('\nUser Input: ')

  # check the format entered
  if len(og_num) > 0:
    if og_num.startswith("0x"):
      num_type = 1
      #print ("It's a hexadecimal\n") #error checking
    elif og_num.startswith("0b"):
      num_type = 2
      #print ("It's a binary number\n") #error checking
    elif og_num.isdigit():
      num_type = 3
      #print ("It's a decimal number\n") #error checking
  else:
    valid = 0
    print ("Invalid input\n")
    break

  # more format checking
  if num_type == 1:
    h_num = og_num[2:].upper()
    #print (h_num) #error checking
    for char in h_num:
      if char not in valid_hex:
        valid = 0
        print("Invalid input\n")
        break
    else:
      valid = 1
      #print ("0x" + h_num + " - is a valid input") #error checking
  elif num_type == 2:
    b_num = og_num[2:]
    #print (b_num) #error checking
    for char in b_num:
      if char not in valid_bin:
        valid = 0
        print("Invalid input\n")
        break
    else:
      valid = 1
      #print ("0b" + b_num + " - is a valid input") #error checking
  elif num_type == 3:
    d_num = og_num
    #print (d_num) #error checking
    for char in d_num:
      if char not in valid_dec:
        valid = 0
        print("Invalid input\n")
        break
    else:
      valid = 1
      #print (d_num + " - is a valid input") #error checking

#call corresponding function and print og input
if num_type == 1:
  b_num = hex_to_bin_conv(h_num, b_num)
  d_num = hex_to_dec_conv(h_num, d_num)
elif num_type == 2:
  d_num = bin_to_dec_conv(b_num, d_num)
  h_num = dec_to_hex_conv(h_num, d_num)
elif num_type == 3:
  h_num = dec_to_hex_conv(h_num, d_num)
  b_num = hex_to_bin_conv(h_num, d_num)

print ("\nHexadecimal Number: 0x" + h_num)
print ("Binary Number: 0b" + b_num)
print ("Decimal Number: " + d_num)

exit(1)
