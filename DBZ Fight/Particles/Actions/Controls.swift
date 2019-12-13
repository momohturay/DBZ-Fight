//
//  Controls.swift
//  DBZ Fight
//
//  Created by Momoh Turay on 12/12/19.
//  Copyright © 2019 Air Barrett Apps. All rights reserved.
//

import Foundation
import GameController
import SpriteKit

extension GameScene

{
    func controllerInputDetected(gamepad: GCExtendedGamepad, element: GCControllerElement, index: Int)
    {
        if gamepad.buttonA.isPressed
               {
                   print("A is pressed")
               }
               
//    if (gamepad.leftThumbstick == element)
//    {
//    if (gamepad.leftThumbstick.xAxis.value != 0)
//    {
//    print("Controller: \(index), LeftThumbstickXAxis: \(gamepad.leftThumbstick.xAxis)")
//    }
//    else if (gamepad.leftThumbstick.xAxis.value == 0)
//    {
//    // Code here to stop player from moving
//        }
//    }
//    // Right Thumbstick
//    if (gamepad.rightThumbstick == element)
//    {
//    if (gamepad.rightThumbstick.xAxis.value != 0)
//    {
//    print("Controller: \(index), rightThumbstickXAxis: \(gamepad.rightThumbstick.xAxis)")
//    }
//    }
//    // D-Pad
//    else if (gamepad.dpad == element)
//    {
//    if (gamepad.dpad.xAxis.value != 0)
//    {
//    print("Controller: \(index), D-PadXAxis: \(gamepad.rightThumbstick.xAxis)")
//    }
//    else if (gamepad.dpad.xAxis.value == 0)
//    {
//    // Code here to stop player from moving
//        }
//    }
//    // A-Button
//    else if (gamepad.buttonA == element)
//    {
//    if (gamepad.buttonA.value != 0)
//    {
//    print("Controller: \(index), A-Button Pressed!")
//        }
//    }
//    // B-Button
//    else if (gamepad.buttonB == element)
//    {
//    if (gamepad.buttonB.value != 0)
//    {
//    print("Controller: \(index), B-Button Pressed!")
//        }
//    }
//    else if (gamepad.buttonY == element)
//    {
//    if (gamepad.buttonY.value != 0)
//    {
//    print("Controller: \(index), Y-Button Pressed!")
//        }
//    }
//    else if (gamepad.buttonX == element)
//    {
//    if (gamepad.buttonX.value != 0)
//    {
//    print("Controller: \(index), X-Button Pressed!")
//            }
//        }
//    }
    
}
}
