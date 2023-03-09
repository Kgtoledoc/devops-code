my_list=[1,2,3,4,5,6]
new_list=[12,3,1]
my_list.extend(new_list)
new_list_copy=my_list.copy()
#my_list.clear() # Clear the actual list
print(my_list.index(12))
print(my_list.count(1))
my_list.insert(0,23)
print(my_list)
my_list.append(2)
print(my_list.remove(2))
my_list.pop(2)
print(my_list)
my_list.sort(reverse=False)
print(my_list)