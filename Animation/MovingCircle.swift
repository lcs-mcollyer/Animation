//
//  MovingCircle.swift
//  Animation
//
//  Created by Matthew Collyer on 2020-11-06.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation

// a class is a container that stores :
// - state (information/data)
// - beahaviours ( methods / functions that make something happen)
class MovingCircle {
    
    // 1. propertys (state)
    var x : Int
    var y : Int
    var dx : Int
    var dy : Int
    var diameter : Int
    
    // 2. The Initailiser ( inisialise, or "set up" the properties with a first value )
    init(x : Int, y : Int, dx : Int, dy : Int, diameter : Int) {
        
  
    
        // "self" refers to the properties from THIS class
        // light blue refers to the property (self)
        // black refers to the local parameter value
        self.x = x
        self.y =  y
        self.dx = dx
        self.dy = dy
        self.diameter = diameter
    }
    
    
    
    // 3. methods ( make things happenn)
    
    
}
