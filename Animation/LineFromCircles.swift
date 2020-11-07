//
// EmptySketch.swift
// Animation
//
// Created by Russell Gordon on 2020-06-08.
// Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LineFromCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    // Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Make a small and large circle
    //    var small: MovingCircle
    //    var large: MovingCircle
    var circles: [MovingCircle] = [] // Empty list (array)
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // add circle
        //        for _ in stride(from: 1, to: 2, by: 1) {
        //
        //        }
        for _ in 1...4 {
            var newCircle = MovingCircle(x: Int.random(in: 0...canvas.width),
                                 y: Int.random(in: 0...canvas.height),
                                 dx: 1,
                                 dy: -1,
                                 diameter: 200)
            
            // now add the new circle to the list
            circles.append(newCircle)
            
        }
        // set up small and large circle
        
        
        // set up small and large circle
        
        
        canvas.drawShapesWithBorders = true
        canvas.borderColor = Color.black
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // var int = Int.random(in: 1...500)
        // var int2 = Int.random(in: 1...500)
        // let rainbow = Color(hue: int2, saturation: int, brightness: int, alpha: int)
        
        // canvas.fillColor = Color.black
        
        canvas.drawShapesWithFill = true
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        canvas.defaultBorderWidth = 7
        // update each circls position on the canvas
        for i in 0...circles.count - 1 {
            circles[i].update(on: canvas)
        }

        // Check whether the circles overlap
       circles[0].drawLineWhenOverLappingWidth(other: circles[1], on: canvas)
        circles[0].drawLineWhenOverLappingWidth(other: circles[2], on: canvas)
        circles[0].drawLineWhenOverLappingWidth(other: circles[3], on: canvas)
        circles[1].drawLineWhenOverLappingWidth(other: circles[2], on: canvas)
         circles[1].drawLineWhenOverLappingWidth(other: circles[3], on: canvas)
        circles[2].drawLineWhenOverLappingWidth(other: circles[3], on: canvas)
    }
}
