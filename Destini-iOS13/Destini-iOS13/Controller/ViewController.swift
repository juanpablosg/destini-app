//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
//    let story0 = "You see a fork in the road."
//
//    let choice1 = "Take a left."
//
//    let choice2 = "Take a right."
    
    var storyBrain = StoryBrain()
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(.choice1)
        updateUI()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        updateUI()

    }
    
    func updateUI() {
        storyLabel.text = storyBrain.currentStory.title
        choice1Button.setTitle(storyBrain.currentStory.choice1, for: .normal)
        choice2Button.setTitle(storyBrain.currentStory.choice2, for: .normal)
    }


}

