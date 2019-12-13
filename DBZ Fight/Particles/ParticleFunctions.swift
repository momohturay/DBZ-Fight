//
//  ParticleFunctions.swift
//  DBZ Fight
//
//  Created by Jr on 12/13/19.
//  Copyright © 2019 Air Barrett Apps. All rights reserved.
//

import Foundation
import SpriteKit

extension GameScene
{
    func snow()
    {
        let snowParticles = SKEmitterNode(fileNamed: "snowParticle.sks")!
        snowParticles.position = CGPoint(x: frame.width/2, y: frame.height/2)
        snowParticles.targetNode = self
        addChild(snowParticles)
        
    }
    
    func rain()
    {
        let rainParticles = SKEmitterNode(fileNamed: "rainParticle.sks")!
        rainParticles.position = CGPoint(x: frame.width/2, y: frame.height/2)
        rainParticles.targetNode = self
        addChild(rainParticles)
        
    }
    
}
