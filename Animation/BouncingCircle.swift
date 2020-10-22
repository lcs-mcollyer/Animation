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
    
    
    
    // First circle
    var x1 = Int.random(in: 1...500)
    var y1 = Int.random(in: 1...500)
    var dx1 = 1
    var dy1 = 1

    // Second circle
    var x2 = Int.random(in: 1...500)
    var y2 = Int.random(in: 1...500)
    var dx2 = 1
    var dy2 = 1

    
    //Third circle
    var x3 = Int.random(in: 1...500)
    var y3 = Int.random(in: 1...500)
    var dx3 = 1
    var dy3 = 1
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        let green = Color.white
        var int3 = Int.random(in: 1...20)
        //    canvas.fillColor = Color.black
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 10)
        canvas.drawShapesWithBorders = false
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        
        canvas.fillColor = green
        
        // Move circle 1
        y1 += dy1
        x1 += dx1

        // Move circle 2
        y2 += dy2
        x2 += dx2
        
        // Move circle 3
        y3 += dx3
        x3 += dx3
        
        
        // Drawing circle 1
        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 30, height: 30)
        
        // Bounce circle 1
        if x1 >= 500 {
            dx1 = -15
        } else if x1 <= 0 {
            dx1 = int3
            
        } else if y1 >= 500 {
            dy1 = -15
            
        } else if y1 <= 0 {
            dy1 = int3
        }
        
        
        // Drawing circle 2
               canvas.drawEllipse(at: Point(x: x2, y: y2), width: 30, height: 30)
               
               // Bounce circle 2
               if x2 >= 500 {
                   dx2 = -15
               } else if x2 <= 0 {
                   dx2 = int3
                   
               } else if y2 >= 500 {
                   dy2 = -15
                   
               } else if y2 <= 0 {
                   dy2 = int3
               }
               
        // Drawing circle 3
        canvas.drawEllipse(at: Point(x: x3, y: y3, width: 30, height: 30)
        
            // Bounce circle 3
            if x3 >= 500 {
              dx3 = -15
            } else if x3 <= 0 {
              dx3 = int3
              
            } else if y3 >= 500 {
              dy3 = -15
              
            } else if y3 <= 0 {
              dy3 = int3
          }
    }
    
    
}

