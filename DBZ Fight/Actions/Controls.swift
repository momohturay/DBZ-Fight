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
    func controllerInputDetected(gamepad: GCExtendedGamepad, element: GCControllerButtonInput, index: Int)
    {
//        if gamepad.buttonA.value == 1.0
        if (gamepad.buttonA.isPressed)
               {
            print("A is pressed")
               }
        if (gamepad.buttonB.isPressed)
                {
            print("B is pressed")
                }
        if (gamepad.buttonX.isPressed)
            {
            print("X is pressed")
            }
        if (gamepad.buttonY.isPressed)
            {
            print("Y is pressed")
            }
        }
    
    func controllerInputDetected(gamepad: GCExtendedGamepad, element: GCControllerElement, index: Int)
        {
            print(6)
    //        if gamepad.buttonA.value == 1.0
            if (gamepad.buttonA.isPressed)
                   {
                print("A is pressed")
                   }
            if (gamepad.buttonB.isPressed)
                    {
                print("B is pressed")
                    }
            if (gamepad.buttonX.isPressed)
                {
                print("X is pressed")
                }
            if (gamepad.buttonY.isPressed)
                {
                print("Y is pressed")
                }
            if (gamepad.leftThumbstick.left.value) == 1
            {
                print("Left")
            }
            if (gamepad.leftThumbstick.right.value) == 1
            {
                print("Right")
            }
            if (gamepad.leftThumbstick.down.value) == 1
            {
                print("Down")
            }
            if (gamepad.leftThumbstick.up.value) == 1
            {
                print("Up")
            }
            
        }
   
}

