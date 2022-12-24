//
//  ContentView.swift
//  game
//
//  Created by Shahid on 13.09.22.
//

import SwiftUI
import SpriteKit
struct ContentView: View {
    class GameScene: SKScene {

        let background = SKSpriteNode(imageNamed: "game")
        let character = SKSpriteNode(imageNamed: "spider")
        let move = SKAction.moveTo(y: 270, duration: 2)
        let mov = SKAction.moveTo(x: 270, duration: 2)
        let m = SKAction.moveTo(x: 100, duration: 2)
        let mo = SKAction.moveTo(y: 100, duration: 2)




        override func sceneDidLoad() {

            background.scale(to: CGSize(width: 700, height: 500))
            background.position = CGPoint(x: size.width / 2, y: size.width / 4)
            background.zPosition = 2
            addChild(background)
            character.scale(to: CGSize(width: 100, height: 50))
            character.position = CGPoint(x: size.width / 1.3, y: size.width / 3.2)
            character.zPosition = 10
            addChild(character)

            let actions = SKAction.sequence([move , mov , m , mo])
            let repeatForever = SKAction.repeatForever(actions)
            character.run(repeatForever)

        }
    }
    var body: some View {
        SpriteView(scene: GameScene(size: CGSize(width: 500, height: 300)))
            .ignoresSafeArea()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
