////
////  MathFunction.swift
////  Animation
////
////  Created by Russell Gordon on 2020-11-09.
////  Copyright © 2020 Royal St. George's College. All rights reserved.
////
//import Foundation
//import CanvasGraphics
//enum FunctionType {
//    case Linear
//    case quadratic
//    case cubic
//    case squareroot
//    case absolutevalue
//    case exponential
//    case reciprocal
//    case sine
//}
//
//// enumeration
//// making a list of choices
//// that you want the user of your code to select from
//
//// Define a class that creates a spiral
//// - a "class" is just a way to group data (properties) together
////   with behaviour (things that we want to happen)
//class MathFunction {
//    
//    // 1. Properties
//    //
//    //    A property is something that describes the item.
//    //    e.g.: A student at LCS has a house, a hair color, a height
//    var lastPoint: Point
//    var a: CGFloat      // Vertical stretch / compression / reflection
//    var k: CGFloat      // Horizontal stretch / compression / reflection
//    var d: CGFloat      // Horizontal shift
//    var c: CGFloat      // Vertical shift
//    var type: FunctionType // tell us what shape to use / math function to use
//    var delayInSeconds: Int // how much of a delay we want
//    
//    // 2. Initializer
//    //
//    //    An initializer has one job: give each property an initial
//    //    value
//    init(a: CGFloat,
//         k: CGFloat,
//         d: CGFloat,
//         c: CGFloat,
//         canvas: Canvas,
//         type: FunctionType,
//         delayInSeconds: Int = 0) {
//        
//        // I want every function to begin off the left side of the canvas
//        self.lastPoint = Point(x: -1 * canvas.width / 2 - 5,
//                               y: 0)
//        
//        // Initialize all properties
//        self.a = a
//        self.k = k
//        self.d = d
//        self.c = c
//        self.type = type
//        self.delayInSeconds = delayInSeconds
//    }
//    
//    // 3. Methods
//    //
//    //    Here we describe what behaviour we want to have happen.
//    
//    // Update (or draw) the position of this spiral
//    func update(on canvas: Canvas, usingInputValue x: Int) {
//        
//        // only draw on canvas when delay in seconds is reached
//        if canvas.frameCount > delayInSeconds * canvas.framesPerSecond {
//            
//            
//            // Make sure each redraw of all the function begins off screen
//            if x == 0 {
//                // I want every function to begin off the left side of the canvas
//                self.lastPoint = Point(x: -1 * canvas.width / 2 - 5,
//                                       y: 0)
//                
//                
//            }
//            
//            
//            // Start drawing after the first frame
//            if x > 0 && x < canvas.width {
//                
//                // Determine the next x position
//                let nextX: Degrees = Degrees(x - canvas.width / 2)
//                
//                // Determine the next y position
//                var nextY: CGFloat = 0.0
//                
//                // Set y using a quadratic function
//                switch type {
//                case .Linear:
//                    nextY = a * ((nextX - d) / k) + c
//                case .quadratic:
//                    nextY = a * pow((nextX - d) / k, 2.0) + c
//                case .cubic:
//                    nextY = a * pow((nextX - d) / k, 3.0) + c
//                case .squareroot:
//                    nextY = a * sqrt((nextX - d) / k) + c
//                case .absolutevalue:
//                    nextY = a * abs((nextX - d) / k) + c
//                case .exponential:
//                    nextY = a * exp((nextX - d) / k) + c
//                case .reciprocal:
//                    nextY = a * 1.0/((nextX - d) / k) + c
//                case .sine:
//                    nextY = a * sin((nextX.asRadians()) / k) + c
//                }
//                
//                
//                
//                // Set the next point
//                let nextPoint = Point(x: nextX, y: nextY)
//                //            print(nextPoint)
//                
//                // Set the line color
//                canvas.lineColor = Color(hue: 100,
//                                         saturation: 100,
//                                         brightness: 90,
//                                         alpha: 100)
//                
//                // Draw a line from the last point to the next point
//                canvas.drawLine(from: lastPoint, to: nextPoint)
//                
//                // Set the "new" last point, now that the line is drawn
//                lastPoint = nextPoint
//                
//            }
//            
//            
//        }
//        
//        
//        
//    }
//    
//}
