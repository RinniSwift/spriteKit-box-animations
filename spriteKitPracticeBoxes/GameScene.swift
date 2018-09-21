//
//  GameScene.swift
//  spriteKitPracticeBoxes
//
//  Created by Rinni Swift on 9/18/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        createSqr()
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
  
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {
  
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    func createSqr(){
        
        let size = CGSize(width: 50, height: 50)
        let sqr = SKSpriteNode(texture: nil, color: .magenta, size: size)
        
        sqr.position.y = (view?.bounds.size.height)! / 2
        sqr.position.x = (view?.bounds.size.width)! / 2
        
        let moveUp = SKAction.moveTo(y: sqr.position.y + 50, duration: 0.1)
        let moveR = SKAction.moveTo(x: sqr.position.x + 50, duration: 0.1)
        let moveD = SKAction.moveTo(y: sqr.position.y - 50, duration: 0.1)
        let moveL = SKAction.moveTo(x: sqr.position.x - 50, duration: 0.1)
        let seq = SKAction.sequence([moveUp, moveR, moveD, moveL])
        
        let fadeout = SKAction.fadeOut(withDuration: 0.1)
        let fadein = SKAction.fadeIn(withDuration: 0.1)
        let seq2 = SKAction.sequence([fadein, fadeout])
        let seq3 = SKAction.repeatForever(seq2)
        
        let getBigger = SKAction.scale(by: 2.0, duration: 1)
        let moveDown = SKAction.moveTo(y: sqr.position.y - 100, duration: 1)
        let seq4 = SKAction.group([getBigger, moveDown])
        
        let rotate = SKAction.rotate(toAngle: 360, duration: 1)
        let getBigger1 = SKAction.scale(by: 2, duration: 1)
        let changeColor = SKAction.colorize(with: .cyan, colorBlendFactor: CGFloat(blendMode.rawValue), duration: 1)
        
        let seq5 = SKAction.group([rotate, getBigger1, changeColor])
        
        
        addChild(sqr)
        sqr.run(seq5)
        

    }
}
