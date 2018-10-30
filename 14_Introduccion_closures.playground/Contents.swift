//: Playground - noun: a place where people can play
var mutiplyClosure:(Int, Int) -> Int
var sumClosure:(Int, Int) -> Int


/*
mutiplyClosure = {(a:Int, b:Int) -> Int in
    return a * b
}
*/

/*
mutiplyClosure = {(a:Int, b:Int) -> Int in
    a * b
}
*/

mutiplyClosure = {
  $0 * $1
}

mutiplyClosure(5,7)
