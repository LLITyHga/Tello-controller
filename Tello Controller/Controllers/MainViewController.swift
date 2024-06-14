//
//  ViewController.swift
//  Tello Controller
//
//  Created by Wolf on 07.06.2024.
//

import UIKit
import SnapKit
import SpriteKit
import GameplayKit

class MainViewController: UIViewController {
    var currentJoystik: JoystickScene?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("FLAG 2")

        let appView = AppView()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.blue.cgColor,
                                UIColor.yellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
                
        let droneImage = appView.imageView(imageName: "tello", tintColor: .clear, contentMode: .scaleAspectFit)
        view.addSubview(droneImage)
        droneImage.snp.makeConstraints { make in
            make.width.height.equalTo(view.bounds.height * 0.75)
            make.centerX.equalTo(view)
            make.centerY.equalTo(view)
        }
        

        let photoButton = appView.button(imageName: "camera", tintColor: .clear, backgroundColor: .clear, cornerRadius: 0)
        view.addSubview(photoButton)
        photoButton.snp.makeConstraints { make in
            make.centerY.equalTo(view).multipliedBy(0.8)
            make.right.equalTo(view).offset(-40)
            make.width.height.equalTo(80)
        }
        
        let recordButton = appView.button(imageName: "camera", tintColor: .clear, backgroundColor: .clear, cornerRadius: 0)
        view.addSubview(recordButton)
        recordButton.snp.makeConstraints { make in
            make.bottom.equalTo(photoButton.snp.top).offset(-8)
            make.right.equalTo(view).offset(-40)
            make.width.height.equalTo(80)
        }
        
        let lendingButton = appView.button(imageName: "lending", tintColor: .clear, backgroundColor: .clear, cornerRadius: 0)
        view.addSubview(lendingButton)
        lendingButton.snp.makeConstraints { make in
            make.top.equalTo(view).offset(16)
            make.centerX.equalTo(view)
            make.width.height.equalTo(45)
        }
        
        let wifiImage = appView.imageView(imageName: "wifi", tintColor: .clear, contentMode: .scaleAspectFit)
        view.addSubview(wifiImage)
        wifiImage.snp.makeConstraints { make in
            make.left.equalTo(lendingButton.snp.right).offset(40)
            make.centerY.equalTo(lendingButton)
            make.width.height.equalTo(45)
        }
        
        let baterryImage = appView.imageView(imageName: "battery2", tintColor: .white, contentMode: .scaleAspectFit)
        view.addSubview(baterryImage)
        baterryImage.snp.makeConstraints { make in
            make.right.equalTo(lendingButton.snp.left).offset(-40)
            make.centerY.equalTo(lendingButton)
            make.width.height.equalTo(45)
        }
        
        let baterryLabel = appView.systemTextLabel(text: "\(100)%", fontSize: 16, weight: .regular, color: .white)
        view.addSubview(baterryLabel)
        baterryLabel.snp.makeConstraints { make in
            make.top.equalTo(baterryImage.snp.bottom).offset(5)
            make.centerX.equalTo(baterryImage)
        }
        
        let wifiLabel = appView.systemTextLabel(text: "\(0)dB", fontSize: 16, weight: .regular, color: .red)
        view.addSubview(wifiLabel)
        wifiLabel.snp.makeConstraints { make in
            make.top.equalTo(wifiImage.snp.bottom).offset(5)
            make.centerX.equalTo(wifiImage)
        }
        
        let disconnectLabel = appView.systemTextLabel(text: "Connect to Tello`s Wifi!", fontSize: 20, weight: .bold, color: .yellow)
        view.addSubview(disconnectLabel)
        disconnectLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(lendingButton.snp.bottom).offset(20)
        }
        
        let joystickView = appView.view(backgroundColor: .clear, cornerRadius: 0)
        view.addSubview(joystickView)
        joystickView.snp.makeConstraints { make in
            make.height.equalTo(view.snp.height)
            make.width.equalTo(view.snp.width)
            make.centerX.equalTo(view)// make it under view
            make.centerY.equalTo(view)
        }
//
//        if let view = self.view as? SKView {
////            if let scene = SKScene(fileNamed: "JoystickScene") {
////                scene.scaleMode = .aspectFill
////                view.presentScene(scene)
////                
////                currentJoystik = scene as? JoystickScene
////                currentJoystik?.viewController = self
////            }
//            print("FLAG 1")
//            currentJoystik?.scaleMode = .aspectFill
//            view.presentScene(currentJoystik)
//            view.showsFPS = true
//                      view.showsNodeCount = true
//                      view.ignoresSiblingOrder = true
//        }
        let skView = SKView(frame: self.view.frame)
      //  skView.layer.insertSublayer(gradientLayer, at: 0)
        joystickView.addSubview(skView)
        let scene = JoystickScene(size: skView.bounds.size)
        skView.presentScene(scene)
//        skView.showsNodeCount = true
//        skView.ignoresSiblingOrder = true
//        skView.frame = view.bounds
//        skView.ignoresSiblingOrder = false
//        let scene = JoystickScene()
//        scene.myView = joystickView
//        scene.scaleMode = .aspectFill
//        joystickView = skView
//        skView.presentScene(scene)
    }


}


