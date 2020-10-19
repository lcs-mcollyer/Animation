//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class RandomSquareGenerator: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    var int = Int.random(in: 10...100)
    var int2 = Int.random(in: 1...500)
    var y = 500
    var x = 500
//       let green = Color(hue: int4, saturation: int4, brightness: int4, alpha: int4)
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        let int = Int.random(in: 1...100)
         let int2 = Int.random(in: 1...500)
        let int3 = Int.random(in: 1...500)
        let int4 = Int.random(in: 1...255)
        let int5 = Int.random(in: 1...100)
        let green = Color(hue: int4, saturation: int5, brightness: int5, alpha: int5)
        canvas.drawRectangle(at: Point(x: int2, y: int3), width: int, height: int)
        canvas.fillColor = green
    }
    
}

