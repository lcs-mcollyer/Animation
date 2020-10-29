
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
// declaring colours
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 80, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)
let deepRed2 = Color(hue: 0, saturation: 50, brightness: 100, alpha: 55)

//setting bacground colour
canvas.fillColor = deepRed

// drawing background
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


for x in stride(from: 0, to: 400, by: 100) {
    for y in stride(from: 0, to: 400, by: 100) {
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.white
        var vertices: [Point] = []
        vertices.append(Point(x: x + 50,
                              y: y )) //start
        vertices.append(Point(x: x + 100,
                              y: y + 50))
        vertices.append(Point(x: x + 50,
                              y: y + 100))
        vertices.append(Point(x: x,
                              y: y + 50)) //end
        
        canvas.drawCustomShape(with: vertices)
        
        canvas.fillColor = deepRed
        
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 65, height: 65)
        
        // drawing the blue circles
        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: x + 75, y: y + 25), width: 65, height: 65)
       
        // drawing the dark red circles
        canvas.fillColor = deepRed2
        canvas.drawEllipse(at: Point(x: x + 130, y: y + 70), width: 65, height: 65)
        
        
    }

   

}

canvas.drawText(message: "the clash", at: Point(x:15, y: 400), size: 50, kerning: 0)

canvas.drawText(message: "£2.25 / friday ", at: Point(x:20, y: 565), size: 8, kerning: 0)
canvas.drawText(message: "december 22 1978 ", at: Point(x:20, y: 553), size: 8, kerning: 0)

 canvas.drawText(message: "christmas party ", at: Point(x:105, y: 565), size: 8, kerning: 0)
 canvas.drawText(message: "with the slits and the innocents ", at: Point(x:105, y: 553), size: 8, kerning: 0)

canvas.drawText(message: "fiars aylesbury hall ", at: Point(x:250, y: 565), size: 8, kerning: 0)
canvas.drawText(message: "aylesbury, buckinghamshire, england ", at: Point(x:250, y: 553), size: 8, kerning: 0)

/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
