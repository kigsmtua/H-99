-- (*) Find the last but one element of a list.

-- The  second last  element of the list is the second element of the revered list
myButLast::(Ord a) => [a] -> a
myButLast x = reverse x !! 1


-- The second last element ot the list is the tail of the init of the List
-- The init function list and returns the list without its last item
myButLast' ::(Ord a) => [a] -> a
myButLast' = last . init

-- Old school pattern matching
-- I did not know you could pattern match a list
myButLast'' ::(Ord a) => [a] -> a
myButLast'' [x,_] = x
myButLast'' (_:xs) = myButLast'' xs


-- Old school pattern matching
myButLast''' ::(Ord a) => [a] -> a
myButLast''' [] = error "Empty List"
myButLast''' [x] = error "List has only one element"
myButLast''' (x:xs) =
                    if length xs == 1 then x
                    else myButLast''' xs


-- Lets do more pattern matching
-- This recursive tree just needs to be drawn down
myButLast'''' ::(Ord a) => [a] -> a
myButLast'''' (x:(_:[])) = x
myButLast'''' (_:xs) = myButLast'''' xs
