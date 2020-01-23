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
//        buttons
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
        if (gamepad.buttonMenu.isPressed)
        {
            print("Button Menu")
        }
        if  (gamepad.buttonOptions!.isPressed)
        {
            print("button options")
        }
//        dpad
        if (gamepad.dpad.left.value) >= 0.7
        {
            print("left dpad")
        }
        if (gamepad.dpad.right.value) >= 0.7
        {
            print("right dpad")
        }
        if (gamepad.dpad.up.value) >= 0.7
        {
            print("up dpad")
        }
        if (gamepad.dpad.down.value) >= 0.7
        {
            print("down dpad")
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
                    weakAttack()
                    
                }
            if (gamepad.buttonY.isPressed)
                {
                print("Y is pressed")
                }
//            left thumbstick
            if (gamepad.leftThumbstick.left.value) >= 0.7
            {
                print("Left")
                moveLeft()
            }
            if (gamepad.leftThumbstick.right.value) >= 0.7
            {
                print("Right")
                moveRight()
            }
            if (gamepad.leftThumbstick.down.value) >= 0.7
            {
                print("Down")
                moveDown()
            }
            if (gamepad.leftThumbstick.up.value) >= 0.7
            {
                print("Up")
                moveUp()
            }
            if (gamepad.leftThumbstickButton?.value) == 0.8
            {
                print("left stick button")

            }
//            right thumbstick
            if (gamepad.rightThumbstick.left.value) >= 0.7
            {
                print("Left")
            }
            if (gamepad.rightThumbstick.right.value) >= 0.7
                      {
                print("Right")
                      }
            if (gamepad.rightThumbstick.down.value) >= 0.7
                      {
                print("Down")
                      }
            if (gamepad.rightThumbstick.up.value) >= 0.7
                      {
                print("Up")
                      }
            if (gamepad.rightThumbstickButton?.value) == 0.8
            {
                print("right stick button")
            }
            
//            shoulders
            if (gamepad.leftShoulder.isPressed)
            {
                print("left shoulder")
            }
            if (gamepad.leftTrigger.isPressed)
            {
                print("left trigger")
            }
            if (gamepad.rightShoulder.isPressed)
            {
                print("right shoulder")
            }
            if (gamepad.rightTrigger.isPressed)
            {
                print("right trigger")
            }
        
        }
   
}

