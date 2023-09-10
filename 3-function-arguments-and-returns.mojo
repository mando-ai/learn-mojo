# Immutable functions arguments examples

fn add(x:Int=1, y:Int=2) -> Int: # by default immutable so x and y will not change
    return x + y

fn add_borrowed(borrowed x:Int=1, borrowed y:Int=2) -> Int: # by default immutable so x and y will not change
    return x + y

#  Mutable functions arguments examples
fn add_mutable(inout x: Int, inout y: Int) -> Int: # bNow x and y are mutable
    x += 1
    y += 1
    return x+ y

# Declare arguments with owned -> provides full ownership of the value (mutable and guaranteed unique)
# This way function can modify the value and not worry about affecting variables outside the function.

fn add_with_owned(owned z:Int) -> Int:
    z += 1
    return z

fn main():
    print(add(1, 3))
    print(add_borrowed(1, 3))
    # both add and add_borrowed are same here on add_borrowed 
    # added borrowed or it will male it explicit with borrowed
    print('Mutable functions call')
    # need to create mutable variable first
    var x :Int = 10
    var y :Int = 20
    print(add_mutable(x, y))
    # mutable function with input change value outisde of the function too
    # so we don't want that change out of the function for that use owned
    x  = 10
    print(add_with_owned(x))
    # here you see value outisde of the function is not changed
    print(x)
    # owned creates a copy of variable and do operations

    # Now we don't want to make a copy but give ownership add ^
    print(add_with_owned(x^))
    # if you can now x after ^ given to it will destroy the local variable x and you will get error on printing x
    # print(x)

    # They are designed to provide total control for memory optimization while ensuring safe access
    # and timely diclation
    




