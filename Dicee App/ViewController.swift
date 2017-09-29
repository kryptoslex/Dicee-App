//
//  ViewController.swift
//  Dicee App
//
//  Created by Michael Jay Abalos on 29/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    var diceValueIndex1: Int = 0
    var diceValueIndex2: Int = 0
    
    var diceImages: [String] = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        randomize()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: Any) {

        randomize()
        print("dice 1 = \(diceValueIndex1) - dice 2 = \(diceValueIndex2)")
        
//        diceValueIndex1 = Int(arc4random_uniform(5)) + 1
//        diceValueIndex2 = Int(arc4random_uniform(5)) + 1
//
//
//        dice1.image = UIImage(named: "dice\(diceValueIndex1)")
//        dice2.image = UIImage(named: "dice\(diceValueIndex2)")
        
    }
    
    func randomize()  {
        
        diceValueIndex1 = Int(arc4random_uniform(6))
        diceValueIndex2 = Int(arc4random_uniform(6))
        
        dice1.image = UIImage(named: diceImages[diceValueIndex1])
        dice2.image = UIImage(named: diceImages[diceValueIndex2])
    }
    
}

