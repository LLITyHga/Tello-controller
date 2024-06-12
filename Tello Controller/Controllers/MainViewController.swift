//
//  ViewController.swift
//  Tello Controller
//
//  Created by Wolf on 07.06.2024.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appView = AppView()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.blue.cgColor,
                                UIColor.systemBlue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
                
        let droneImage = appView.imageView(imageName: "tello", tintColor: .clear, contentMode: .scaleAspectFit)

        let photoButton = appView.button(imageName: "camera", tintColor: .clear, backgroundColor: .clear, cornerRadius: 0)
        
        let recordButton = appView.button(imageName: "record", tintColor: .clear, backgroundColor: .clear, cornerRadius: 0)
        
        let lendingButton = appView.button(imageName: "lending", tintColor: .clear, backgroundColor: .clear, cornerRadius: 0)
        
        let wifiImage = appView.imageView(imageName: "wifi", tintColor: .clear, contentMode: .scaleAspectFit)
        
        let baterryImage = appView.imageView(imageName: "baterry", tintColor: .white, contentMode: .scaleAspectFit)
        
        let baterryLabel = appView.systemTextLabel(text: "\(100)%", fontSize: 16, weight: .regular, color: .white)
        
        let wifiLabel = appView.systemTextLabel(text: "\(0)dB", fontSize: 16, weight: .regular, color: .red)
        
        let disconnectLabel = appView.systemTextLabel(text: "Connect to Tello`s Wifi!", fontSize: 20, weight: .bold, color: .yellow)
        
        
    }


}
