//
//  ViewController.swift
//  my_homework_2.3
//
//  Created by Matsuoka Tamura on 12.02.2022.
//


import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    var user = ""
    
    private let primaryColor = UIColor(
        red: 10/255,
        green: 90/255,
        blue: 110/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 90/255,
        green: 60/255,
        blue: 90/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Добро пожаловать, \(user)!"
    }

}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
