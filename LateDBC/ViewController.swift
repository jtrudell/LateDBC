//
//  ViewController.swift
//  LateDBC
//
//  Created by Jen Trudell on 11/14/15.
//  Copyright © 2015 Jen Trudell. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // vars for various elements from view

    @IBOutlet var whoLabel: UILabel!
    @IBOutlet var enterNameField: UITextField!
    @IBOutlet var resetButton: UIButton!
    
    // add audio functionality to play I'm late
    
    var audioPlayer = AVAudioPlayer()
    
    var lateSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("late", ofType: "mp3")!)
    
    func playMySound(){
        do { audioPlayer = try AVAudioPlayer(contentsOfURL: lateSound, fileTypeHint: nil) } catch _ { return }
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // when name is entered and returned, change top label text
    @IBAction func enterNameAction(sender: UITextField) {
        if sender.text == "" {
            sender.text = "Eileen"
        }
        whoLabel.text = sender.text! + " is late today!"
        playMySound()

    }
    
    // when reset button is pressed, reset top label and text entry field
    @IBAction func resetButtonPressed(sender: AnyObject) {
        self.whoLabel.text = "Who is late today?"
        self.enterNameField.text = ""

    }
    
}

