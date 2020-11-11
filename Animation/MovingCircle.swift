////
////  MovingCircle.swift
////  Animation
////
////  Created by Matthew Collyer on 2020-11-06.
////  Copyright © 2020 Royal St. George's College. All rights reserved.
////
//
//import Foundation
//import CanvasGraphics
//// a class is a container that stores :
//// - state (information/data)
//// - beahaviours ( methods / functions that make something happen)
//class MovingCircle {
//    
//    // 1. propertys (state)
//    var x : Int
//    var y : Int
//    var dx : Int
//    var dy : Int
//    var diameter : Int
//    var drawCircle: Bool
//    
//    // Computer property
//    var radius: Int {
//        return self.diameter / 2
//    }
//    
//    
//    // 2. The Initailiser ( inisialise, or "set up" the properties with a first value )
//    init(x : Int, y : Int, dx : Int, dy : Int, diameter : Int, drawCircle: Bool) {
//        
//        
//        
//        // "self" refers to the properties from THIS class
//        // light blue refers to the property (self)
//        // black refers to the local parameter value
//        self.x = x
//        self.y =  y
//        self.dx = dx
//        self.dy = dy
//        self.diameter = diameter
//        self.drawCircle = drawCircle
//    }
//
//    
//    // 3. methods ( make things happenn)
//    func update(on canvas: Canvas) {
//        
//        // move cirlce
//        
//        x += dx
//        y += dy
//        
//        
//        //set circle colours
//        canvas.drawShapesWithFill = false
//        canvas.fillColor = Color.white
//        
//        // draw the circle
//        if drawCircle == true {
//            canvas.drawEllipse(at: Point(x: x, y: y),
//                               width: diameter,
//                               height: diameter)
//        }
//        
//        
//        // bounce first circle at edges
//        if x >= canvas.width {
//               dx = -1
//               
//           } else if x <= 0 {
//               dx = 1
//        } else if y >= canvas.height {
//               dy = -1
//               
//           } else if y <= 0 {
//               dy = 1
//           }
//    
//    
//    }
//    
//    
//    func drawLineWhenOverLappingWidth(other: MovingCircle,
//                                      on canvas: Canvas) {
//          // find disatance between the circles
//              let a = Double(self.x - other.x)
//              let b = Double(self.y - other.y)
//              let d = sqrt(a*a + b*b)
//        //      print("Distance between circles is \(d)")
//             
//        
//        let alpha = map(value: diameter, fromLower: 40, fromUpper: Double(self.radius + other.radius), toLower: 10, toUpper: 50)
//        canvas.lineColor = alpha
//
//              // when the circles overlap, draw a line bewtween two circles
//              // when the distance inbetween is less than the sum of the radii
//              if d < Double(self.radius + other.radius) {
//                  canvas.drawLine(from: Point(x: self.x, y: self.y),
//                                  to: Point(x: other.x, y: other.y))
//              }
//    }
//}
