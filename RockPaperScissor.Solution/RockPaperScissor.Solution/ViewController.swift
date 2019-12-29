//
//  ViewController.swift
//  RockPaperScissor.Solution
//
//  Created by Justus Sawyer on 12/29/19.
//  Copyright © 2019 Jude Sawyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var yourLabel: UILabel!
    @IBOutlet weak var theirLabel: UILabel!
    var theirChoice: Int = 0
    var ourChoice: Int = 1
    
    
    @IBAction func rockPressed(_ sender: Any) {
        yourLabel.text = "rock"
        ourChoice = 1
        theirChoice = Int.random(in:  1...3)
        if theirChoice != 0 {
            switch theirChoice {
            case 1:
                theirLabel.text = "rock"
            case 2:
                theirLabel.text = "paper"
            case 3:
                theirLabel.text = "scissors"
            default:
                break
    }
        }
        winCheck()
    }
    @IBAction func paperPressed(_ sender: Any) {
        yourLabel.text = "paper"
        ourChoice = 2
        theirChoice = Int.random(in:  1...3)
            theirChoice = Int.random(in:  1...3)
            if theirChoice != 0 {
                switch theirChoice {
                case 1:
                    theirLabel.text = "rock"
                case 2:
                    theirLabel.text = "paper"
                case 3:
                    theirLabel.text = "scissors"
                default:
                    break
        }
            }
winCheck()
    }
    @IBAction func scissorsPressed(_ sender: Any) {
        yourLabel.text = "scissors"
        ourChoice = 3
        theirChoice = Int.random(in:  1...3)
            theirChoice = Int.random(in:  1...3)
            if theirChoice != 0 {
                switch theirChoice {
                case 1:
                    theirLabel.text = "rock"
                case 2:
                    theirLabel.text = "paper"
                case 3:
                    theirLabel.text = "scissors"
                default:
                    break
        }
            }
winCheck()
 }
    func winCheck (){
        if ourChoice == theirChoice {
            winLabel.text = "Tie"
        }
        if ourChoice == 1 && theirChoice == 2 {
            winLabel.text = "Winner"
        }
        if ourChoice == 1 && theirChoice == 3 {
                winLabel.text = "Loser"
            }
       if ourChoice == 2 && theirChoice == 1 {
               winLabel.text = "Won"
           }
        if ourChoice == 2 && theirChoice == 3 {
                winLabel.text = "Loser"
            }
        if ourChoice == 3 && theirChoice == 1 {
                winLabel.text = "Loser"
            }
        if ourChoice == 3 && theirChoice == 2 {
                winLabel.text = "Winner"
            }

    
    
}

}

