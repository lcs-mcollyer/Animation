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
class FiveCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Vertical position
    var x = 250
    var y = 250
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //Change Horizontal position
        x -= 1
       
        
        // Draw a square in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 25, height: 25)
        
        
        y += 1
        // Draw a Second Square in the top of the canvas
        canvas.drawEllipse(at: Point(x: 250, y: y), width: 25, height: 25)
    }
    
}

