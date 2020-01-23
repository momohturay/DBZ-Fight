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
    var background = SKSpriteNode(imageNamed: "Background4")
    var player = SKSpriteNode()
        override func didMove(to view: SKView)
         {
            background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
                   addChild(background)
//            (player as! CharacterNode).setUpStateMachine()
            player = childNode(withName: "Player") as! SKSpriteNode
            player.name = "player"
//           rain() 
             spawnSprite()
             ObserveForGameControllers()
            
            var Computer = Player(health: 100, Armor: 100)
            Computer.health-=10
            
             let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
             borderBody.friction = 0.0
             self.physicsBody = borderBody
            physicsWorld.gravity = CGVector(dx: 0, dy: -9.8)
             
             
          
             aiFighter.physicsBody?.categoryBitMask = 3
            
             
         }
    
    func checkCollisions()
    {
        var playerOne: [SKSpriteNode] = []
        enumerateChildNodes(withName: ("player") {
            node, _ in
            let player = childNode(withName: "Player") as! SKSpriteNode

        }, using: <#(SKNode, UnsafeMutablePointer<ObjCBool>) -> Void#>
    })
    func ObserveForGameControllers ()
        
        // func is called to detect any controllers currently connected to the apple tv
        
    {
        NotificationCenter.default.addObserver(self, selector: #selector(connectControllers), name: NSNotification.Name.GCControllerDidConnect, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(disconnectControllers), name: NSNotification.Name.GCControllerDidDisconnect, object: nil)
    }
    
    
    @objc func connectControllers()
        // This Function is called when a controller is connected to the Apple TV
    {
        
        print("found controller")
    //Unpauses the Game if it is currently paused
    self.isPaused = false
    //Used to register the Nimbus Controllers to a specific Player Number
    var indexNumber = 0
    // Run through each controller currently connected to the system
    for controller in GCController.controllers() {
    //Check to see whether it is an extended Game Controller (Such as a Nimbus)
        if controller.extendedGamepad != nil {
            
            print(2)
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
   
    
   func setupControllerControls(controller: GCController) {
       //Function that check the controller when anything is moved or pressed on it
    print(3)
       controller.extendedGamepad?.valueChangedHandler = {
         (gamepad: GCExtendedGamepad, element: GCControllerElement) in
         // Add movement in here for sprites of the controllers
        print(4)
        self.controllerInputDetected(gamepad: gamepad, element: element, index: controller.playerIndex.rawValue)
//        self.controllerInputDetected(gamepad: gamepad, element: GCControllerButtonInput, index: controller.playerIndex.rawValue)
        
//      self.controllerInputDetected(gamepad: gamepad, index: controller.playerIndex.rawValue)
       }
     }
   
    
    func spawnSprite ()
        //spawns Sprite
    {
    }
    
    
    func moveRight()
       {
        player.physicsBody?.applyImpulse(CGVector(dx: 50, dy: 0))
    }
       
       func moveLeft()
       {
        player.physicsBody?.applyImpulse(CGVector(dx: -50, dy: 0))

    }
       
       func moveUp()
       {
        player.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 100))

    }
       
       func moveDown()
       {
        player.physicsBody?.applyImpulse(CGVector(dx: 0, dy: -20))

    }
       
       func weakAttack()
       {
        player.physicsBody?.applyImpulse(CGVector(dx: 100, dy: 200))
    }
       
       func strongAttack()
       {
        player.physicsBody?.applyImpulse(CGVector(dx: 300, dy: 400))

    }
       
       func specialButton()
       {}
       
       func jumpButton()
       {}
       
       func shieldButton()
       {}

    
  

}
