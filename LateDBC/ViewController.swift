//
//  ViewController.swift
//  LateDBC
//
//  Created by Jen Trudell on 11/14/15.
//  Copyright © 2015 Jen Trudell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var whoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterNameAction(sender: UITextField) {
        if sender.text == "" {
            sender.text = "Eileen"
        }
        whoLabel.text = sender.text! + " is late today!"
    }
}

