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
class BouncingCircle: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    // Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    
    
    
    var x1 = Int.random(in: 1...500)
    var y1 = Int.random(in: 1...500)
    var dx1 = 1
    var dy1 = 1
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        var int = Int.random(in: 1...500)
        var int2 = Int.random(in: 1...500)
        let green = Color.white
        var int3 = Int.random(in: 1...20)
        //    canvas.fillColor = Color.black
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 10)
        canvas.drawShapesWithBorders = false
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        
        canvas.fillColor = green
        y1 += dy1
        x1 += dx1
        
        
        
        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 30, height: 30)
        if x1 >= 500 {
            dx1 = -15
        } else if x1 <= 0 {
            dx1 = int3
            
        } else if y1 >= 500 {
            dy1 = -15
            
        } else if y1 <= 0 {
            dy1 = int3
        }
        
        
        
    }
    
    
}

