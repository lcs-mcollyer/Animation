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
class BouncingCircle: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    var y1 = 250
    var x1 = 250
    var dxy1 = 1
    var dy1 = 1
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        canvas.fillColor = Color.white
        
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        
        canvas.fillColor = Color.black
        y1 += 1
        x1 += 1
        
        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 30, height: 30)
        if x > = 500 {
            dx1 = -1
        } else if
        x<
        }
    }
    
}

