//
//  ViewController.swift
//  CIS55Lab1_samFox
//
//  Created by samfo on 4/17/17.
//  Copyright © 2017 Sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var my_label: UILabel!
    @IBOutlet weak var my_text_field: UITextField!
    @IBOutlet weak var my_button: UIButton!
    var default_text_value : String = "This is my text!"
    var default_button_text = "Go ahead, click me"
    var button_values = ["you aren't done, are you?", "you fail. Try again.", "What? I missed that", "That was weak.", "huh?", "*yawn* booorrrring.", "not very original.", "how about a better phrase"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        my_text_field.text = default_text_value
        my_label.text = default_text_value
        my_button.setTitle(default_button_text, for: .normal)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "image")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func button_pressed(_ sender: Any) {
        let text = my_text_field.text!
        my_label.text = text
        let num = Int(arc4random_uniform(8))
        let phrase = button_values[num]
        my_button.setTitle(phrase, for: .normal)
    }
    
    
}

