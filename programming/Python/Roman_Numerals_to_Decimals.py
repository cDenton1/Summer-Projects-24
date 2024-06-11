#ask for user input
num_input = input("Enter the roman numerals you want to convert: ")

#function to convert input
def roman_to_int(numeral):
  final_ans = 0

  #if statemnts to handle edge cases
  if "CM" in numeral:
    final_ans += 900
    numeral = numeral.replace("CM", "")

  if "CD" in numeral:
    final_ans += 400
    numeral = numeral.replace("CD", "")
  
  if "XC" in numeral:
    final_ans += 90
    numeral = numeral.replace("XC", "")
  
  if "XL" in numeral:
    final_ans += 40
    numeral = numeral.replace("XL", "")
  
  if "IX" in numeral:
    final_ans += 9
    numeral = numeral.replace("IX", "")
  
  if "IV" in numeral:
    final_ans += 4
    numeral = numeral.replace("IV", "")
  
  #for loop to run through user input and convert
  for check in numeral:
    if check == "M":
      final_ans += 1000
    elif check == "D":
      final_ans += 500
    elif check == "C":
      final_ans += 100
    elif check == "L":
      final_ans += 50
    elif check == "X":
      final_ans += 10
    elif check == "V":
      final_ans += 5
    elif check == "I":
      final_ans += 1

  #print the translation
  print ("The roman numerals you entered translate to: " + str(final_ans))

#call the function
roman_to_int(num_input)
