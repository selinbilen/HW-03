//
//  bounce.swift
//  HW03
//
//  Created by selin eylül bilen on 3/5/21.
//

import Foundation
import UIKit

class bounce: UIView{
    var ballx = 0
    var bally = 0
    var dx = 1
    var dy = 1

    override func draw(_ rect:CGRect){
        let imagerect = CGRect(x: ballx, y: bally, width: 70, height: 70)
        
        let imagell = UIImage(named: "ball")
        imagell!.draw(in: imagerect)
       
    }
    @objc func update(){
        print("ball bounced")
        
        ballx = ballx + dx
        bally = bally + dy
        dy = dy + 1
        
        if (dy > 20){
            dy = 20
        }
        if ballx < Int(self.bounds.minX){
            dx = -dx
        }
        if bally <  Int(self.bounds.minY) {
            dy = -dy
        }
        if ballx > Int(self.bounds.maxX){
            dx = -dx
        }
        if bally > Int(self.bounds.maxY) {
            dy = -dy
        }
        setNeedsDisplay()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for i in touches{
            let point = i.location(in: self)

            if (ballx == 207 && bally == 308){
                print("Basket!!")
                dx = -dx
                dy = -dy
            }
            
            bally = Int(point.y)
            ballx = Int(point.x)
        }
    }
}
