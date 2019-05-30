//
//  GameScene.swift
//  Breakout
//
//  Created by Joseph Barkley on 5/30/19.
//  Copyright © 2019 Joseph Barkley. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene {
    var background = SKSpriteNode(imageNamed: "background")
    override func didMove(to view: SKView) {
//        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        addBlocks()
        self.backgroundColor = .blue
//        addChild(background)
        
    }
    
    func addBlocks(){
        let block = SKSpriteNode(imageNamed: "block")
        let point1 = CGPoint(x: self.size.width/1.125, y: self.size.height / 1.5)
        block.position = point1
        addChild(block)
        let block2 = SKSpriteNode(imageNamed: "block")
        let point2 = CGPoint(x: self.size.width/1.5, y: self.size.height / 1.5)
        block2.position = point2
        addChild(block2)
        let block3 = SKSpriteNode(imageNamed: "block")
        let point3 = CGPoint(x: self.size.width/2.25, y: self.size.height / 1.5)
        block3.position = point3
        addChild(block3)
        let block4 = SKSpriteNode(imageNamed: "block")
        let point4 = CGPoint(x: self.size.width/4.5, y: self.size.height / 1.5)
        block4.position = point4
        addChild(block4)
        let block5 = SKSpriteNode(imageNamed: "block")
        let point5 = CGPoint(x: self.size.width/4.5, y: self.size.height / 1.125)
        block5.position = point5
        addChild(block5)
        let block6 = SKSpriteNode(imageNamed: "block")
        let point6 = CGPoint(x: self.size.width/2.25, y: self.size.height / 1.125)
        block6.position = point6
        addChild(block6)
        let block7 = SKSpriteNode(imageNamed: "block")
        let point7 = CGPoint(x: self.size.width/1.5, y: self.size.height / 1.125)
        block7.position = point7
        addChild(block7)
        let block8 = SKSpriteNode(imageNamed: "block")
        let point8 = CGPoint(x: self.size.width/1.125, y: self.size.height / 1.125)
        block8.position = point8
        addChild(block8)
        let blockArray : [SKSpriteNode] = [block, block2, block3, block4, block5, block6, block7, block8]
    }
    
}
