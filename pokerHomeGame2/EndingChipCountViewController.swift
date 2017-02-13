//
//  EndingChipCountViewController.swift
//  pokerHomeGame2
//
//  Created by Vlad Barash on 2/12/17.
//  Copyright © 2017 Vlad Barash. All rights reserved.
//

import Foundation
import UIKit

class EndingChipCountViewController: UIViewController {
    

    var numPlayers:String = ""
    var nameArray:Array = [String]()
    var startArray:Array = [Double]()
    var endArray:Array = [Double]()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "segue3" {
            let vvv = segue.destination as! ComputeViewController
            vvv.nameArray = nameArray
            vvv.startArray = startArray
            vvv.numPlayers = numPlayers
            vvv.endArray = endArray
            
        } else {
            
        }
    }
    
    
    
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var name3: UITextField!
    @IBOutlet weak var name4: UITextField!
    @IBOutlet weak var name5: UITextField!
    @IBOutlet weak var name6: UITextField!
    @IBOutlet weak var name7: UITextField!
    @IBOutlet weak var name8: UITextField!
    @IBOutlet weak var name9: UITextField!
    
    
    @IBOutlet weak var end1: UITextField!
    @IBOutlet weak var end2: UITextField!
    @IBOutlet weak var end3: UITextField!
    @IBOutlet weak var end4: UITextField!
    @IBOutlet weak var end5: UITextField!
    @IBOutlet weak var end6: UITextField!
    @IBOutlet weak var end7: UITextField!
    @IBOutlet weak var end8: UITextField!
    @IBOutlet weak var end9: UITextField!
    
    
    @IBAction func computeClick(_ sender: Any) {
        endArray.removeAll()
        
        endArray.append(Double(end1.text!)!)
        endArray.append(Double(end2.text!)!)
        endArray.append(Double(end3.text!)!)
        endArray.append(Double(end4.text!)!)
        endArray.append(Double(end5.text!)!)
        endArray.append(Double(end6.text!)!)
        endArray.append(Double(end7.text!)!)
        endArray.append(Double(end8.text!)!)
        endArray.append(Double(end9.text!)!)
        
        let sumStart = startArray.reduce(0, +)
        let sumEnd = endArray.reduce(0, +)
        
        let message = "Starting and ending chip counts don't match. Starting chip count: " + String(sumStart)
        
        if sumStart != sumEnd {
            // popup
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            // segue
            performSegue(withIdentifier: "segue3", sender: nil)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboard()
        
        print(nameArray)
        print(startArray)
        print(numPlayers)
        
        
        
        end1.keyboardType = UIKeyboardType.decimalPad
        end2.keyboardType = UIKeyboardType.decimalPad
        end3.keyboardType = UIKeyboardType.decimalPad
        end4.keyboardType = UIKeyboardType.decimalPad
        end5.keyboardType = UIKeyboardType.decimalPad
        end6.keyboardType = UIKeyboardType.decimalPad
        end7.keyboardType = UIKeyboardType.decimalPad
        end8.keyboardType = UIKeyboardType.decimalPad
        end9.keyboardType = UIKeyboardType.decimalPad
        
        
        
        name1.text = nameArray[0]
        name2.text = nameArray[1]
        name3.text = nameArray[2]
        name4.text = nameArray[3]
        name5.text = nameArray[4]
        name6.text = nameArray[5]
        name7.text = nameArray[6]
        name8.text = nameArray[7]
        name9.text = nameArray[8]
        
        
        
        if Int(numPlayers) == 2 {
            name3.isHidden = true
            end3.isHidden = true
            name4.isHidden = true
            end4.isHidden = true
            name5.isHidden = true
            end5.isHidden = true
            name6.isHidden = true
            end6.isHidden = true
            name7.isHidden = true
            end7.isHidden = true
            name8.isHidden = true
            end8.isHidden = true
            name9.isHidden = true
            end9.isHidden = true
        } else if numPlayers == "3" {
            name4.isHidden = true
            end4.isHidden = true
            name5.isHidden = true
            end5.isHidden = true
            name6.isHidden = true
            end6.isHidden = true
            name7.isHidden = true
            end7.isHidden = true
            name8.isHidden = true
            end8.isHidden = true
            name9.isHidden = true
            end9.isHidden = true
        } else if numPlayers == "4" {
            name5.isHidden = true
            end5.isHidden = true
            name6.isHidden = true
            end6.isHidden = true
            name7.isHidden = true
            end7.isHidden = true
            name8.isHidden = true
            end8.isHidden = true
            name9.isHidden = true
            end9.isHidden = true
        } else if numPlayers == "5" {
            name6.isHidden = true
            end6.isHidden = true
            name7.isHidden = true
            end7.isHidden = true
            name8.isHidden = true
            end8.isHidden = true
            name9.isHidden = true
            end9.isHidden = true
        } else if numPlayers == "6" {
            name7.isHidden = true
            end7.isHidden = true
            name8.isHidden = true
            end8.isHidden = true
            name9.isHidden = true
            end9.isHidden = true
        } else if numPlayers == "7" {
            name8.isHidden = true
            end8.isHidden = true
            name9.isHidden = true
            end9.isHidden = true
        } else if numPlayers == "8" {
            name9.isHidden = true
            end9.isHidden = true
        } else {
            // do nothing
        }
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


