//
//  ViewController.swift
//  Cold Call
//
//  Created by administrator on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {

    
    let namesArray: [String] =
    ["Hassan", "Amer", "Hamza"," Tariq", "Sati",
    "Danny", "Kevin", "Hussain", "Ahmed", "Mohammed"]
    
    @IBOutlet weak var nameLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = namesArray[0]
    }

    @IBAction func coldCallButton(_ sender: UIButton) {
        changeName()
    }
    
    private func changeName(){
        nameLabel.text = namesArray[getRandomNumber()]
    }
    
    private func getRandomNumber() -> Int{
        return Int.random(in: 0..<10)
    }

}

