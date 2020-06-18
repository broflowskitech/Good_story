//
//  ViewController.swift
//  Good story
//
//  Created by Jan B on 27/04/2020.
//  Copyright © 2020 broflowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var Choice1: UIButton!
    @IBOutlet weak var Choice2: UIButton!
    
    
    
    var story = Story()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Choice1.layer.cornerRadius = 5
        Choice2.layer.cornerRadius = 5
        updateView()
    }

    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        story.nextQuestion(userChoice: sender.currentTitle!)
        updateView()
    }
    
    
    func updateView() {
        labelView.text = story.getQuestionLabel()
        Choice1.setTitle(story.getAnswerA(), for: .normal)
        Choice2.setTitle(story.getAnswerB(), for: .normal)
    }
    
     
  
    
}

