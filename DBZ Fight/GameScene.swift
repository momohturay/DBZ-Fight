//
//  GameScene.swift
//  DBZ Fight
//
//  Created by  on 12/6/19.
//  Copyright © 2019 Air Barrett Apps. All rights reserved.
//

import SpriteKit
import GameplayKit
import GameController

var player = SKSpriteNode()
var aiFighter = SKSpriteNode()

class GameScene: SKScene {
        override func didMove(to view: SKView)
         {
//             rain() 
             spawnSprite()
             ObserveForGameControllers()
            
             let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
             borderBody.friction = 0.0
             self.physicsBody = borderBody
             physicsWorld.gravity = CGVector(dx: 0, dy: 0)
             
             
          
             aiFighter.physicsBody?.categoryBitMask = 3
            
             
         }
    func ObserveForGameControllers ()
        
        // func is called to detect any controllers currently connected to the apple tv
        
    {
        NotificationCenter.default.addObserver(self, selector: #selector(connectControllers), name: NSNotification.Name.GCControllerDidConnect, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(disconnectControllers), name: NSNotification.Name.GCControllerDidDisconnect, object: nil)
    }
    
    
    @objc func connectControllers()
        // This Function is called when a controller is connected to the Apple TV
        {
    //Unpauses the Game if it is currently paused
    self.isPaused = false
    //Used to register the Nimbus Controllers to a specific Player Number
    var indexNumber = 0
    // Run through each controller currently connected to the system
    for controller in GCController.controllers() {
    //Check to see whether it is an extended Game Controller (Such as a Nimbus)
    if controller.extendedGamepad != nil {
    controller.playerIndex = GCControllerPlayerIndex.init(rawValue: indexNumber)!
    indexNumber += 1
    setupControllerControls(controller: controller)
            }
        }
    }
    
    @objc func disconnectControllers()
    // This Function is called when a controller is disconnected from the Apple TV
    {
    // Pauses the Game if a controller is disconnected
    self.isPaused = true
    }
    
    func setupControllerControls(controller: GCController)
    {
    // Checks the controller when anything is moved or pressed on it
    controller.extendedGamepad?.valueChangedHandler =
    {
    (gamepad: GCExtendedGamepad, element: GCControllerElement) in
    // Add movement in here for sprites of the controllers
        self.controllerInputDetected(gamepad: gamepad, element: element as! GCControllerButtonInput, index: controller.playerIndex.rawValue)
        }
    }
    
    
    func spawnSprite ()
        //spawns Sprite
    {
        player = SKSpriteNode(color: UIColor.orange, size: CGSize(width: 40, height: 40))
        
        player.position = CGPoint(x: 1, y: 2)
    }
    
    
    
    func creataipaddle ()
     {
        //create the paddle at tope of the screen
        aiFighter = SKSpriteNode (color: UIColor.green, size: CGSize(width: 200, height: 50))
        aiFighter.position = CGPoint(x: frame.width  * 0.5, y: frame.height  * 0.8)
        addChild(aiFighter)
        aiFighter.name = "aiFighter"
        //add physics to the paddle
        aiFighter.physicsBody = SKPhysicsBody(rectangleOf: aiFighter.frame.size)
        aiFighter.physicsBody?.allowsRotation = false
        aiFighter.physicsBody?.friction = 0
        aiFighter.physicsBody?.affectedByGravity = false
        aiFighter
            .physicsBody?.isDynamic = false
        
    }
}
