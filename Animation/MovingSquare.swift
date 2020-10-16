//
//  File.swift
//  Animation
//
//  Created by Matthew Collyer on 2020-10-15.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
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
class MovingSquare: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // vertices position
    var x = 250
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // change the vertices position
        x -= 1
        
        
        
        // draw a square in the middle of the canvas
        canvas.drawRectangle(at: Point(x: x, y: 250), width: 50, height: 50, anchoredBy: .centre)
        

        print("the X position is: \(x)")

        
    }
    
}

