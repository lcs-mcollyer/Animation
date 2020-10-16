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
// COLORS
let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)


// draw the shape needed for pattern
//    canvas.drawLine(from: Point(x: 50, y: 50), to: Point(x: 50, y: 0)) {
//canvas.drawLine(from: Point(x: 50, y: 50), to: Point(x: 0, y: 0))
//        canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 50, y: 0)) }
//
//for y in stride(from: 0, through: 400, by: 40) {
//for x in stride(from: 0, through: 400, by: 40) {
//    canvas.drawLine(from: Point(x: 45, y: 45), to: Point(x: 45, y: 0))
//    canvas.drawLine(from: Point(x: 45, y: 45), to: Point(x: 0, y: 0))
//    canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 45, y: 0)) }
//}


canvas.drawAxes(withScale: true, by: 50)
canvas
//
//canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 400, y: 400))
//canvas.drawLine(from: Point(x: 50, y: 0), to: Point(x: 400, y: 350))
//canvas.drawLine(from: Point(x: 100, y: 0), to: Point(x: 400, y: 300))
//canvas.drawLine(from: Point(x: 150, y: 0), to: Point(x: 400, y: 250))
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 400, y: 200))
//canvas.drawLine(from: Point(x: 250, y: 0), to: Point(x: 400, y: 150))
//canvas.drawLine(from: Point(x: 300, y: 0), to: Point(x: 400, y: 100))
//canvas.drawLine(from: Point(x: 350, y: 0), to: Point(x: 400, y: 50))

for x in stride(from: 0, to: 400, by: 50)

//canvas.drawAxes()
canvas.fillColor = deepOrange {
    canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400) }

//triangles(testloop)
canvas.fillColor = brightYellow
var vertices: [Point] = [] //empty list of vertices
vertices.append(Point(x: 45, y: 200)) //start
vertices.append(Point(x: 0, y: 200))
vertices.append(Point(x: 45, y: 245)) //end
canvas.drawCustomShape(with: vertices)



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
