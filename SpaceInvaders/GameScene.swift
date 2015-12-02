//
//  GameScene.swift
//  SpaceInvaders
//
//  Created by 18nielsenm on 12/1/15.
//  Copyright (c) 2015 SixMollow. All rights reserved.
//

import SpriteKit
    var last = 0

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "SpaceInvaders";
        myLabel.fontSize = 45
        myLabel.position = CGPoint (x: 520, y: 725)
        
        self.addChild(myLabel)
    }
    
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
            sprite2.position.x = location.x
            sprite2.position.y = (location.y - 55)
            
            
         
            
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
            
            
     
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
