//: Playground - noun: a place where people can play
//Sets
//Los sets, también son colecciones igual que diccionarios y array, su principal diferencia es que no se pueden repetir.
var chessPieces: Set<String> = ["King", "Queen", "Rook", "Bishop", "Knight", "Pawn"]
var cards: Set<String> = ["King", "Queen", "Joker"]
chessPieces.insert("tower")

if chessPieces.contains("King"){
    print("king")
}

chessPieces.intersection(cards)
cards.union(chessPieces)
