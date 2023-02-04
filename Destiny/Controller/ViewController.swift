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
        Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
    ]
    
    var storyNumber = 0

    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = stories[0].title
        choice1Button.setTitle(getChoice1(), for: .normal)
        choice2Button.setTitle(getChoice2(), for: .normal)
        
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
    func getChoice1() -> String {
        return stories[storyNumber].choice1
        }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
        }
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
}

