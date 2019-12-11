//
//  GameScene.swift
//  DBZ Fight
//
//  Created by  on 12/6/19.
//  Copyright © 2019 Air Barrett Apps. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    

    var Player = SKSpriteNode()
    var aiFighter = SKSpriteNode()
    
        override func didMove(to view: SKView)
         {
             
             let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
             borderBody.friction = 0.0
             self.physicsBody = borderBody
             physicsWorld.gravity = CGVector(dx: 0, dy: 0)
             
             
          
             aiFighter.physicsBody?.categoryBitMask = 3
            
             
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
