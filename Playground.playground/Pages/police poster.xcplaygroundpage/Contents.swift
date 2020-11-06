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
// Color constants
let almostBlack = Color(hue: 282, saturation: 7, brightness: 16, alpha: 100)
let translucentPink = Color(hue: 328, saturation: 94, brightness: 80, alpha: 75)
let translucentYellow = Color(hue: 49, saturation: 96, brightness: 87, alpha: 75)
let translucentBlue = Color(hue: 194, saturation: 100, brightness: 78, alpha: 75)
let deepTan = Color(hue: 89, saturation: 6, brightness: 88, alpha: 50)

for x in stride(from: 0, to: 400, by: 35) {
    canvas.
 
//if x + y == 700 or if x + y % __ = _
//decrease ellipse size by __ each time



canvas.fillColor = translucentBlue
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
    









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

import Foundation

var str = "Hello, playground"

//: [Next](@next)
