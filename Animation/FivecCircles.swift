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
    
    let purple = Color(hue: 309, saturation: 100, brightness: 64, alpha: 100)
    let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 100)
    let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
    let green = Color(hue: 100, saturation: 100, brightness: 100, alpha: 100)
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
        
        // Change Horizontal position
       
         
        
       
        // Draw a Line going horizontally to the left of the canvas
        canvas.fillColor = purple
        x1 -= 1
        canvas.drawEllipse(at: Point(x: x1, y: y2), width: 50, height: 50)
        
      
        // Draw a fourth line going to the right of the screen
        canvas.fillColor = lightBlue
        x2 += 1
        canvas.drawEllipse(at: Point(x: x2, y: y1), width: 50, height: 50)
        
       
        // Draw a Second line Going Straight Upward
        canvas.fillColor = translucentPink
        y1 += 1
        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 50, height: 50)
        
       
        // Draw a third line going to the bottom of the screen
        canvas.fillColor = green
        y2 -= 1
        canvas.drawEllipse(at: Point(x: x2, y: y2), width: 50, height: 50)
       
    }

    
}

