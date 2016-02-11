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
    var moveCounter = 0
    
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
                moveCounter++
                print(moveCounter)
            }
        }
        
        counter++
        if counter == 2
        {
            reset()
        }
        getCurrentPlayer()
        checkForWinner()
    }
//}
    //func checkIfBoardIsFull
    //{
      //  label1.text = "X"
        //label2.text = "O"
        //labelArray.
    //}
    
    func getCurrentPlayer() {
        let myRange = Range<String.Index>(start: playerSymbol.startIndex.advancedBy(counter), end:
            playerSymbol.startIndex.advancedBy(counter+1))
        currentPlayerLabel.text = playerSymbol.substringWithRange(myRange)
        currentPlayer = Character(playerSymbol.substringWithRange(myRange))
    
}
    
   func reset()
    {
        counter = 0
        //let alert = UIAlertController(title: "Reseting Counter", message: "Hi", preferredStyle: UIAlertControllerStyle.Alert)
        //let okayAction = UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: clearLabels)
        //alert.addAction(okayAction)
        //presentViewController(alert, animated: true, completion: nil)
    }
    
    //func clearLabels(Action: UIAlertAction)
    //{
      //  label1.text = ""
       // label2.text = ""
        //label3.text = ""
        
    //}
    
    func checkForWinner()
        
    {
        
        if label1.text == label2.text && label2.text == label3.text && label3.text != ""
            
        {
            
            presentWinningAlert("\(label3.text!)")
            
        }
            
        else if label4.text == label5.text && label5.text == label6.text && label6.text != ""
            
        {
            
            presentWinningAlert("\(label6.text!)")
            
        }
            
        else if label7.text == label8.text && label8.text == label9.text && label9.text != ""
            
        {
            
            presentWinningAlert("\(label9.text!)")
            
        }
            
        else if label1.text == label4.text && label4.text == label7.text && label7.text != ""
            
        {
            
            presentWinningAlert("\(label7.text!)")
            
        }
            
        else if label2.text == label5.text && label5.text == label8.text && label8.text != ""
            
        {
            
            presentWinningAlert("\(label8.text!)")
            
        }
            
        else if label3.text == label6.text && label6.text == label9.text && label9.text != ""
            
        {
            
            presentWinningAlert("\(label9.text!)")
            
        }
            
        else if label1.text == label5.text && label5.text == label9.text && label9.text != ""
            
        {
            
            presentWinningAlert("\(label9.text!)")
            
        }
            
        else if label3.text == label5.text && label5.text == label7.text && label7.text != ""
            
        {
            
            presentWinningAlert("\(label7.text!)")
            
        }
        
        
        
        if moveCounter == 9
            
        {
            
            presentWinningAlert("No One")
            
        }
        
    }
    func presentWinningAlert(x: String)
    {
        var alert = UIAlertController(title: "Winner!", message: "Congratulations", preferredStyle: UIAlertControllerStyle
    }
}

