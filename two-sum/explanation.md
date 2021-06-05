For this problem, I used a dictionary to store the value of the complement of the target.
Why did I do that?
Because we want to find the sum of two numbers.
Instead of traversing the array of number multiple times(this will increase the time complexity), we store the complement number in a dictionary.

For example, if our target is 9. Given an array of numbers [2, 3, 4, 6], how do we do it?

So we enumerate this once.

Index = 0, what do we get?
Value = 2
Complement = 9 - 2 = 7
Let's find 7 in our dictionary. We don't have it, so we move on. But let's store number 2 in our dictionary.
Our dictionary now has [2:0]. We store key = number, value = index of the number stored.

Index = 1, what do we get?
Value = 3
Complement = 9 - 3 = 6
Let's find 6 in our dictionary. We don't have it, so we move on. But let's store number 3 in our dictionary.
Our dictionary now has [2:0, 3:1]. We store key = number, value = index of the number stored.

Index = 2, what do we get?
Value = 3
Complement = 9 - 3 = 6
Let's find 6 in our dictionary. We don't have it, so we move on. But let's store number 3 in our dictionary.
Our dictionary now has [2:0, 3:1, 4:2]. We store key = number, value = index of the number stored.

Index = 3, what do we get?
Value = 6
Complement = 9 - 6 = 3
Let's find 3 in our dictionary. Now we have it in the dictionary. And its the value for the key is 1.
Now we have the answer: [Current Index, Value of index stored in complement dictionary] => [3, 1]

