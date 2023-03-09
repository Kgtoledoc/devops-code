#raise (Used to raise an existing exeptions)
#assert (Used to create an AssertionError)
#raise Exception("This is an exception")

"""
age=23
if age>30:
  print("Valid age")
else:
  raise ValueError("Age is less than 30")
"""

age=40
try:
  assert age < 30
  print("Valid age")
except AssertionError:
  print("Raised with assert because age is less than 30")
except:
  print("Exception ocurred")