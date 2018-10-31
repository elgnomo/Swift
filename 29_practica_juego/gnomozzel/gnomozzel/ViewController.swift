//
//  ViewController.swift
//  gnomozzel
//
//  Created by Efrain Antonio on 30/10/18.
//  Copyright © 2018 elGnomo. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var board: UIView!//puente propiedades
    var tileWidth : CGFloat = 0.0
    var tileCenterX : CGFloat = 0.0
    var tileCenterY : CGFloat = 0.0
    
    var tileArray : NSMutableArray = []//label
    var tileCenterArray : NSMutableArray = []//posicion
    
    @IBAction func btnRandom(_ sender: Any) {//acciones comportamiento
        randomTiles()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeTiles()
        randomTiles()
    }
    
    func makeTiles(){
        self.tileArray = [] //inicializar en ceros vacios
        self.tileCenterArray = []
        let boardWidth = self.board.frame.width // ancho del tablero
        self.tileWidth = boardWidth / 4   // ancho de cada cuadro para que puedan entrar 4 cuadros por cada fila
        
        self.tileCenterX = self.tileWidth / 2
        self.tileCenterY = self.tileWidth / 2
        
        var tileNumber : Int = 1
        
        for _ in 0..<4{
            for _ in 0..<4{
                // Crear cuadros
                let tileFrame : CGRect = CGRect(x: 0, y: 0, width: self.tileWidth - 4, height: self.tileWidth - 4)
                let tile : CustomLabel = CustomLabel(frame: tileFrame)
                let currentCenter : CGPoint = CGPoint(x: self.tileCenterX, y: self.tileCenterY)
                tile.center = currentCenter
                tile.originCenter = currentCenter
                
                self.tileCenterArray.add(currentCenter)
                tile.backgroundColor = UIColor.red
                tile.text = String(tileNumber)
                tile.textAlignment = NSTextAlignment.center//recibe el valor de la posicion
                tile.font = UIFont.systemFont(ofSize: 24)
                tileNumber += 1
                
                self.board.addSubview(tile)
                
                self.tileArray.add(tile)
                
                self.tileCenterX = self.tileCenterX + self.tileWidth
            }
            self.tileCenterX = self.tileWidth / 2
            self.tileCenterY = self.tileCenterY + self.tileWidth
        }
        let lastTile : UILabel = self.tileArray.lastObject as! UILabel
        lastTile.removeFromSuperview()
        self.tileArray.removeObject(at: 15)
    }
    
    func randomTiles(){
        let tempTileCenterArray : NSMutableArray = self.tileCenterArray.mutableCopy() as! NSMutableArray
        for anyTile in self.tileArray{
            let randomIndex : Int = Int(arc4random()) % self.tileCenterArray.count// obtenemos aleatoriamente un centro de nuestro array
            //arc4random devolver un numero aleatorio
            let randomCenter : CGPoint = self.tileCenterArray[randomIndex] as! CGPoint
            
            (anyTile as! CustomLabel).center = randomCenter
            self.tileCenterArray.removeObject(at: randomIndex)
            
        }
    }
}

class CustomLabel : UILabel{//Herencia de la clasa UILABEL CLASES siempre ne mayusculas
    var originCenter : CGPoint = CGPoint(x: 0, y: 0)
}

