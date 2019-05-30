//
//  GameScene.swift
//  Breakout
//
//  Created by Joseph Barkley on 5/30/19.
//  Copyright © 2019 Joseph Barkley. All rights reserved.
//

import SpriteKit
import GameplayKit

struct PhysicsCategory{
    static let None : UInt32 = 0
    static let All : UInt32 = UInt32.max
    static let Block : UInt32 = 0b1
    static let Player : UInt32 = 0b1
    static let Ball : UInt32 = 0b10
}

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var background = SKSpriteNode(imageNamed: "background")
    var player = SKSpriteNode(imageNamed: "paddle")
    var ball = SKSpriteNode(imageNamed: "ball")
    
    override func didMove(to view: SKView) {
//        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        addBlocks()
        self.backgroundColor = .black
//        addChild(background)
        physicsWorld.gravity = CGVector.zero
        physicsWorld.contactDelegate = self
        player.position = CGPoint(x: self.size.width / 2.0 , y: self.size.height / 5.0)
        player.physicsBody = SKPhysicsBody(rectangleOf: player.size)
        player.physicsBody?.isDynamic = true
        player.physicsBody?.categoryBitMask = PhysicsCategory.Block
        player.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        player.physicsBody?.collisionBitMask = PhysicsCategory.None
        ball.position = CGPoint(x: self.size.width / 2.0, y: self.size.height / 2.5)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width/2)
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.categoryBitMask = PhysicsCategory.Ball
        ball.physicsBody?.contactTestBitMask = PhysicsCategory.Block
        ball.physicsBody?.collisionBitMask = PhysicsCategory.None
        ball.physicsBody?.usesPreciseCollisionDetection = true
        addChild(ball)
        addChild(player)
    }
    
    func addBlocks(){
        let block = SKSpriteNode(imageNamed: "block")
        let point1 = CGPoint(x: self.size.width/1.125, y: self.size.height / 1.5)
        block.position = point1
        let block2 = SKSpriteNode(imageNamed: "block")
        let point2 = CGPoint(x: self.size.width/1.5, y: self.size.height / 1.5)
        block2.position = point2
        let block3 = SKSpriteNode(imageNamed: "block")
        let point3 = CGPoint(x: self.size.width/2.25, y: self.size.height / 1.5)
        block3.position = point3
        let block4 = SKSpriteNode(imageNamed: "block")
        let point4 = CGPoint(x: self.size.width/4.5, y: self.size.height / 1.5)
        block4.position = point4
        let block5 = SKSpriteNode(imageNamed: "block")
        let point5 = CGPoint(x: self.size.width/4.5, y: self.size.height / 1.125)
        block5.position = point5
        let block6 = SKSpriteNode(imageNamed: "block")
        let point6 = CGPoint(x: self.size.width/2.25, y: self.size.height / 1.125)
        block6.position = point6
        let block7 = SKSpriteNode(imageNamed: "block")
        let point7 = CGPoint(x: self.size.width/1.5, y: self.size.height / 1.125)
        block7.position = point7
        let block8 = SKSpriteNode(imageNamed: "block")
        let point8 = CGPoint(x: self.size.width/1.125, y: self.size.height / 1.125)
        block8.position = point8
        let blockArray : [SKSpriteNode] = [block, block2, block3, block4, block5, block6, block7, block8]
        for item in blockArray {
            item.physicsBody = SKPhysicsBody(rectangleOf: item.size)
            item.physicsBody?.isDynamic = true
            item.physicsBody?.categoryBitMask = PhysicsCategory.Block
            item.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
            item.physicsBody?.collisionBitMask = PhysicsCategory.None
            addChild(item)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else{
            return
        }
        let touchLocation = touch.location(in: self)
        player.position = CGPoint(x: touchLocation.x, y: player.position.y)
    }
    
}
