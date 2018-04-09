-- (*) Find the last element of a list.
myLast:: (Ord a) => [a] -> a
myLast [] = error "Empty List"
myLast [x] = x
myLast(x:xs) = myLast xs
