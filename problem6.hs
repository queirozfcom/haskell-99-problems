-- find whether a list is a palindrome

-- my solution
isPalindrome ::  (Eq x) => [x] -> Bool
isPalindrome [a] = True
isPalindrome (x:xs) = ( x == last xs) && isPalindrome (init xs)

--one solution from the website:

--let's see what this does...

--this merges the list and its reverse into the variable input
--makes sense to see that if every pair is equal then it's a palindrome

--then a fold is used to accumulate on True so that, if any pair is not a match, it'll be false and the list is not a palindrome.. neat!

isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' xs = foldl (\acc (a,b) -> if a == b then acc else False) True input
	where
	input = zip xs (reverse xs)
