//
//  ViewController.swift
//  ticTacToe
//
//  Created by student1 on 2/8/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//
//testing.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var currentPlayerLabel: UILabel!
    
    var labelArray = [UILabel]()
    let playerSymbol = "XO"
    var counter = 0
    var currentPlayer:Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelArray.append(label1)
        labelArray.append(label2)
        labelArray.append(label3)
        labelArray.append(label4)
        labelArray.append(label5)
        labelArray.append(label6)
        labelArray.append(label7)
        labelArray.append(label8)
        labelArray.append(label9)
        
        
    }
    
    @IBAction func whenTapped(sender: UITapGestureRecognizer) {
        let selectedPoint = sender.locationInView(self.view)
        print(selectedPoint)
        for label in labelArray
        {
            if CGRectContainsPoint(label.frame, selectedPoint)
            {
                label.text = String(currentPlayer)
            }
        }
        
        counter++
        if counter == 2
        {
            reset()
        }
        getCurrentPlayer()
    }
//}
    
    func getCurrentPlayer() {
        let myRange = Range<String.Index>(start: playerSymbol.startIndex.advancedBy(counter), end:
            playerSymbol.startIndex.advancedBy(counter+1))
        currentPlayerLabel.text = playerSymbol.substringWithRange(myRange)
        currentPlayer = Character(playerSymbol.substringWithRange(myRange))
    
}
    
   // func reset()
    //{
      //  counter = 0
        //let alert = UIAlertController(title: "Reseting Counter", message: "Hi", preferredStyle: UIAlertControllerStyle.Alert)
        //let okayAction = UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: clearLabels)
        //alert.addAction(okayAction)
        //presentViewController(alert, animated: true, completion: nil)
    /}
    
    //func clearLabels(Action: UIAlertAction)
    /{
      //  label1.text = ""
       // label2.text = ""
        //label3.text = ""
        
    //}
}

