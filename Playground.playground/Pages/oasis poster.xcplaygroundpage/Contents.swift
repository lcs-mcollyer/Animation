//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
let turqoise = Color(hue: 177, saturation: 67, brightness: 40, alpha: 100)
let lightturqoise = Color(hue: 168, saturation: 56, brightness: 59, alpha: 100)
let lighterturqoise = Color(hue: 165, saturation: 65, brightness: 70, alpha: 100)


// creating a background for the poster
canvas.fillColor = turqoise
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// drawing shapes without boarders
canvas.drawShapesWithBorders = false


// creating the variable sequence
for x in stride(from: 0, to: 400, by: 100) {
    for y in stride(from: 0, to: 400, by: 100) {
        
        // drawing the shape
        canvas.fillColor = lightturqoise
        var vertices: [Point] = []
        
        vertices.append(Point(x: x,
                              y: y)) //start
        vertices.append(Point(x: x + 100,
                              y: y))
        vertices.append(Point(x: x + 50,
                              y: y + 100)) //end
        
        canvas.drawCustomShape(with: vertices)
        
        // drawing 2nd shape
        canvas.fillColor = lighterturqoise
               
               
               vertices.append(Point(x: x + 25,
                                     y: y)) //start
               vertices.append(Point(x: x + 125,
                                     y: y))
               vertices.append(Point(x: x + 75,
                                     y: y + 100)) //end
               
               canvas.drawCustomShape(with: vertices)
        
    }
    
}


canvas.drawText(message: "Oasis", at: Point(x:15, y: 400), size: 50, kerning: 0)

canvas.drawText(message: "£25.00 / Per day ", at: Point(x: 20, y: 565), size: 8, kerning: 0)
canvas.drawText(message: "december 22 1978 ", at: Point(x: 20, y: 553), size: 8, kerning: 0)

canvas.drawText(message: "christmas party ", at: Point(x: 105, y: 565), size: 8, kerning: 0)
canvas.drawText(message: "with the slits and the innocents ", at: Point(x: 105, y: 553), size: 8, kerning: 0)

canvas.drawText(message: "Knebworth House, Hertfordshire", at: Point(x: 250, y: 565), size: 8, kerning: 0)

