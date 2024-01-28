//
//  ViewController.swift
//  CarCounter
//
//  Created by Frank Entsie on 2024/01/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultViewContainer: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    var numberOfCars = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(.black)
        resultViewContainer.layer.cornerRadius = 10.0
        resultLabel.layer.cornerRadius = 15.0
        
        let insets = UIEdgeInsets(top: 1.0, left: 10.0, bottom: 3.0, right: 2.0)
        resultLabel.frame.inset(by: insets)
        // Do any additional setup after loading the view.
      
    }

    @IBAction func onAddClicked(_ sender: UIButton) {
        numberOfCars += 1
        resultLabel.text = "\(numberOfCars) Cars"
    }
    
    @IBAction func onMinusPressed(_ sender: UIButton) {
        if numberOfCars > 0{
            numberOfCars = numberOfCars - 1
            resultLabel.text = "\(numberOfCars) Cars"
        }
    }
}

