//
//  ViewController.swift
//  Destiny
//
//  Created by Марк Райтман on 03.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    let stories = [
        Story(title: "You see a fork in the road", choices: ["Take a left", "Take a right"]),
        Story(title: "You see a tiger", choices: ["Shout for help", "Play dead"]),
        Story(title: "You find a treasure chest", choices: ["Open it", "Check for traps"])
    ]
    
    var questionNumber = 0

    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = stories[0].title
        choice1Button.setTitle(getAnswers()[0], for: .normal)
        choice2Button.setTitle(getAnswers()[1], for: .normal)
        
    }
    
    //MARK: Outlets
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //MARK: Actions
    @IBAction func choiceMade(_ sender: UIButton) {
        if choice1Button.titleLabel?.text == "Take a left" {
            storyLabel.text = "You see a tiger"
        }
        else if choice2Button.currentTitle == "Take a right" {
            storyLabel.text = "You find a treasure chest"
        }
    }
    
    //MARK: Methods
    func getAnswers() -> [String] {
        return stories[questionNumber].choices
        }
}

