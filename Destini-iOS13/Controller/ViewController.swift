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
    
    var storyBrain = StoryBrain()
    
    @IBAction func choiceMade(_ sender: UIButton){
        let storyChoice = sender.currentTitle!
        storyBrain.nextStory(storyChoice)
        UpdateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }
    
    func UpdateUI(){
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.getStory1(), for: .normal)
        choice2Button.setTitle(storyBrain.getStory2(), for: .normal)
    }
    
    
}
