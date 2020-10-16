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
    var x1 = 250
    var y1 = 250
    var y2 = 250
    var x2 = 250
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //Change Horizontal position
        x1 -= 1
       
        
        // Draw a Line going horizontally to the left of the canvas
        canvas.drawEllipse(at: Point(x: x1, y: 250), width: 25, height: 25)
        
        
        y1 += 1
        // Draw a Second line Going Straight Upward
        canvas.drawEllipse(at: Point(x: 250, y: y1), width: 25, height: 25)
        
        y2 -= 1
        // draw a third line going to the bottom of the screen
        canvas.drawEllipse(at: Point(x: 250, y: y2), width: 25, height: 25)
  
        x2 += 1
        //draw a fourth line going to the right of the screen
        canvas.drawEllipse(at: Point(x: x2, y: 250), width: 25, height: 25)
    }

    
}

