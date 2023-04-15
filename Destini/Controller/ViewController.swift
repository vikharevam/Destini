//
//  ViewController.swift
//  Destini
//
//  Created by Александр Вихарев on 09.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var storyTitle: UILabel!
    @IBOutlet weak var buttonChoiceOne: UIButton!
    @IBOutlet weak var buttonChoiceTwo: UIButton!
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        
        
        
        updateUI()
        
        
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoise = (sender.titleLabel?.text)
        storyBrain.nextStory(userChoice: userChoise ?? "no data")
        
        updateUI()
        
    }
    
    func updateUI(){
        
        storyTitle.text = storyBrain.getStoriesTitle()
        
        buttonChoiceOne.setTitle(storyBrain.getChoice1(), for: .normal)
        buttonChoiceTwo.setTitle(storyBrain.getChoice2(), for: .normal)
        
        
    }
    
}
