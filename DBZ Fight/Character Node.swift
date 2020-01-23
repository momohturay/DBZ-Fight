import SpriteKit
import GameplayKit
import GameKit

class CharacterNode: SKSpriteNode
  {
      var left = false
      var right = false
      
      var hSpeed:CGFloat = 0.0
      
      var walkSpeed:CGFloat = 2
      
      var stateMachine:GKStateMachine?
    
      func setUpStateMachine() {
        
        let normalState = NormalState(with: self)
        stateMachine = GKStateMachine(states: [normalState])
        stateMachine?.enter(NormalState.self)
    }
  }
