//
//  MenuScene.swift
//  ColorSwitch
//
//  Created by Graphic Influence on 03/03/2020.
//  Copyright © 2020 marianne massé. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {

    private var logoColorSwitch: SKSpriteNode!

    override func didMove(to view: SKView) {
        layoutScene()
        addLabels()
    }

    func layoutScene() {
        backgroundColor = UIColor(red: 44/255, green: 62/2555, blue: 80/255, alpha: 1)
        logoColorSwitch = SKSpriteNode(imageNamed: "logo")
        logoColorSwitch.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
        logoColorSwitch.size = CGSize(width: frame.size.width/2, height: frame.size.width/2)
        animateLogo(logo: logoColorSwitch)
        addChild(logoColorSwitch)
    }

    func animateLogo(logo: SKSpriteNode) {
        let rotate = SKAction.rotate(byAngle: .pi, duration: 1)
        logo.run(SKAction.repeat(rotate, count: 2))
    }

    func addLabels() {
        let playLabel = SKLabelNode(text: "Tap to Play!")
        playLabel.fontColor = .white
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 50
        playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        animate(label: playLabel)
        addChild(playLabel)


        let highScoreLabel = SKLabelNode(text: "Highscore: " + "\(UserDefaults.standard.integer(forKey: "Highscore"))")
        highScoreLabel.fontColor = .white
        highScoreLabel.fontSize = 40
        highScoreLabel.fontName = "AvenirNext-Bold"
        highScoreLabel.position = CGPoint(x: frame.midX, y: highScoreLabel.frame.size.height*4)
        addChild(highScoreLabel)


        let recentScoreLabel = SKLabelNode(text: "Recent score: " + "\(UserDefaults.standard.integer(forKey: "RecentScore"))")
        recentScoreLabel.fontColor = .white
        recentScoreLabel.fontSize = 40
        recentScoreLabel.fontName = "AvenirNext-Bold"
        recentScoreLabel.position = CGPoint(x: frame.midX, y: recentScoreLabel.frame.size.height*2)
        addChild(recentScoreLabel)
    }

    func animate(label: SKLabelNode) {
//        let fadeOut = SKAction.fadeOut(withDuration: 0.5)
//        let fadeIn = SKAction.fadeIn(withDuration: 0.5)

        let scaleUp = SKAction.scale(to: 1.1, duration: 0.5)
        let scaleDown = SKAction.scale(to: 1.0, duration: 0.5)
        let sequence = SKAction.sequence([scaleUp, scaleDown])
        label.run(SKAction.repeatForever(sequence))
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: view!.bounds.size)
        view?.presentScene(gameScene)
    }

}
