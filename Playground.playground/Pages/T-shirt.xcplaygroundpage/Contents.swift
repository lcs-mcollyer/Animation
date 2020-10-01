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
let preferredWidth = 300
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
//let canvas = Canvas(width: preferredWidth, height: preferredHeight)
let canvas = Canvas(width: preferredWidth, height: preferredHeight, quality: .Ultra)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 150, y: 150), to: Point(x: 200, y: 175), capStyle: .round)
canvas.drawLine(from: Point(x: 200, y: 175), to: Point(x: 150, y: 200), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 200), to: Point(x: 100, y: 175), capStyle: .round)
canvas.drawLine(from: Point(x: 100, y: 175), to: Point(x: 150, y: 150), capStyle: .round)

canvas.drawLine(from: Point(x: 150, y: 200), to: Point(x: 150, y: 250), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 250), to: Point(x: 200, y: 225), capStyle: .round)
canvas.drawLine(from: Point(x: 200, y: 225), to: Point(x: 200, y: 175), capStyle: .round)

canvas.drawLine(from: Point(x: 100, y: 175), to: Point(x: 100, y: 225), capStyle: .round)
canvas.drawLine(from: Point(x: 100, y: 225), to: Point(x: 150, y: 250), capStyle: .round)

canvas.drawLine(from: Point(x: 100, y: 225), to: Point(x: 50, y: 250), capStyle: .round)
canvas.drawLine(from: Point(x:150 , y: 250), to: Point(x: 100, y: 275), capStyle: .round)
canvas.drawLine(from: Point(x: 50, y: 250), to: Point(x: 100, y: 275), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 250), to: Point(x: 200, y: 275), capStyle: .round)
canvas.drawLine(from: Point(x: 200, y: 275), to: Point(x: 250, y: 250), capStyle: .round)
canvas.drawLine(from: Point(x: 250, y: 250), to: Point(x: 200, y: 225), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 250), to: Point(x: 150, y: 300), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 300), to: Point(x: 200, y: 325), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 300), to: Point(x: 100, y: 325), capStyle: .round)
canvas.drawLine(from: Point(x: 100, y: 325), to: Point(x: 100, y: 275), capStyle: .round)
canvas.drawLine(from: Point(x: 200, y: 325), to: Point(x: 200, y: 275), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 350), to: Point(x: 200, y: 325), capStyle: .round)
canvas.drawLine(from: Point(x: 150, y: 350), to: Point(x: 100, y: 325), capStyle: .round)
canvas.drawLine(from: Point(x: 250, y: 250), to: Point(x: 250, y: 200), capStyle: .round)
canvas.drawLine(from: Point(x: 250, y: 200), to: Point(x: 200, y: 175), capStyle: .round)
canvas.drawLine(from: Point(x: 100, y: 175), to: Point(x: 50, y: 200), capStyle: .round)
canvas.drawLine(from: Point(x: 50, y: 200), to: Point(x: 50, y: 250), capStyle: .round)


canvas.copyToClipboard()
