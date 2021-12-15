//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var storyLabel: UILabel!
    @IBOutlet private weak var choice1Button: UIButton!
    @IBOutlet private weak var choice2Button: UIButton!
    
    private var storyBrain = StoryBrain()
    
    @IBAction private func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(.choice1)
        updateUI()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        updateUI()

    }
    
    private func updateUI() {
        storyLabel.text = storyBrain.currentStory.title
        choice1Button.setTitle(storyBrain.currentStory.choice1, for: .normal)
        choice2Button.setTitle(storyBrain.currentStory.choice2, for: .normal)
    }


}

