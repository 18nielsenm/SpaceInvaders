//
//  GameScene.swift
//  SpaceInvaders
//
//  Created by 18nielsenm on 12/1/15.
//  Copyright (c) 2015 SixMollow. All rights reserved.
//

import SpriteKit
    var last = 0
    var first = 1
    var Score = 0
    let enemyMovement1 = SKAction.moveByX(45, y: 0, duration: 1)
    let enemyMovement2 = SKAction.moveByX(-90, y: 0, duration: 1)


// __________________________________________________________________________________________________

let spriteEnemy1 = SKSpriteNode(imageNamed:"Pancakes")
let spriteEnemy2 = SKSpriteNode(imageNamed: "Pancakes")
let spriteEnemy3 = SKSpriteNode(imageNamed: "Pancakes")

    let myLabel = SKLabelNode(fontNamed:"Chalkduster")
    let scoreLabel = SKLabelNode(fontNamed: "Chalkduster")

// __________________________________________________________________________________________________

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        myLabel.text = "BreakfastInvaders";
        myLabel.fontSize = 40
        myLabel.position = CGPoint (x: 510, y: 725)
        self.addChild(myLabel)
        
        //MARK: add score label
        
                scoreLabel.text = "Score:";
        scoreLabel.fontSize = 30
        scoreLabel.position = CGPoint (x: 370, y: 670)
        self.addChild(scoreLabel)
        
// __________________________________________________________________________________________________
        
        spriteEnemy1.xScale = 0.25
        spriteEnemy1.yScale = 0.25
        spriteEnemy1.position = CGPoint (x:520, y: 630)
        
        spriteEnemy2.xScale = spriteEnemy1.xScale
        spriteEnemy2.yScale = spriteEnemy1.yScale
        spriteEnemy2.position = CGPoint (x: 640, y: 630)
        
        spriteEnemy3.xScale = spriteEnemy1.xScale
        spriteEnemy3.yScale = spriteEnemy1.yScale
        spriteEnemy3.position = CGPoint (x: 400, y: 630)
      
        self.addChild(spriteEnemy1)
        self.addChild(spriteEnemy2)
        self.addChild(spriteEnemy3)
        
    }
    
        
        

// __________________________________________________________________________________________________
        
        
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
    
            
            let sprite = SKSpriteNode(imageNamed:"Pancakes")
            let sprite2 = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
         
            
            sprite2.xScale = 0.5
            sprite2.yScale = 0.5
            sprite2.position = location
        
            
            
         
            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:2)
            let action = SKAction.moveByX(CGFloat (0), y: CGFloat (100), duration: 1)
            sprite2.runAction(SKAction.repeatActionForever(action))
            
            
            if last == 0 {
                self.addChild(sprite)
                last = 1
            }
            
            else {
                self.addChild(sprite2)
                last = 0
            }
            
            Score++
            scoreLabel.text = "Score: \(Score)"
            
            
     
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
 