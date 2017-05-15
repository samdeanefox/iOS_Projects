//
//  PlayerViewController.swift
//  Lab 2
//
//  Created by samfo on 5/11/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var homerunsView: UILabel!
    @IBOutlet weak var bioView: UITextView!
    
    var picture: UIImage!
    var name: String!
    var homeruns: String!
    var bio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.pictureView.image = self.picture
        self.nameView.text = self.name
        self.homerunsView.text = self.homeruns
        self.bioView.text = self.bio
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
