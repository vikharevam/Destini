//
//  ViewController.swift
//  Destini
//
//  Created by Александр Вихарев on 09.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var qwestDialog: UILabel!
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // Do any additional setup after loading the view.
        
        
        func updateUI() {
            qwestDialog.text = storyBrain.getStoriesTitle()
            
            
            
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
}
