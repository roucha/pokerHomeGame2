//
//  StartingChipCountViewController.swift
//  pokerHomeGame2
//
//  Created by Vlad Barash on 2/12/17.
//  Copyright © 2017 Vlad Barash. All rights reserved.
//

import Foundation
import UIKit

class StartingChipCountViewController: UIViewController {
    
    var numPlayers:String = ""
    var nameArray = [String]()
    var startArray = [Double]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "segue2" {
            let vv = segue.destination as! EndingChipCountViewController
            vv.nameArray = nameArray
            vv.startArray = startArray
            vv.numPlayers = numPlayers
        } else {
            
        }
    }

    
    
    
    

    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var start1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var start2: UITextField!
    @IBOutlet weak var name3: UITextField!
    @IBOutlet weak var start3: UITextField!
    @IBOutlet weak var name4: UITextField!
    @IBOutlet weak var start4: UITextField!
    @IBOutlet weak var name5: UITextField!
    @IBOutlet weak var start5: UITextField!
    @IBOutlet weak var name6: UITextField!
    @IBOutlet weak var start6: UITextField!
    @IBOutlet weak var name7: UITextField!
    @IBOutlet weak var start7: UITextField!
    @IBOutlet weak var name8: UITextField!
    @IBOutlet weak var start8: UITextField!
    @IBOutlet weak var name9: UITextField!
    @IBOutlet weak var start9: UITextField!

    

    
    

    
    
    
    @IBAction func endGameClick(_ sender: Any) {
        
        
        nameArray.append(name1.text!)
        nameArray.append(name2.text!)
        nameArray.append(name3.text!)
        nameArray.append(name4.text!)
        nameArray.append(name5.text!)
        nameArray.append(name6.text!)
        nameArray.append(name7.text!)
        nameArray.append(name8.text!)
        nameArray.append(name9.text!)
        
        startArray.append(Double(start1.text!)!)
        startArray.append(Double(start2.text!)!)
        startArray.append(Double(start3.text!)!)
        startArray.append(Double(start4.text!)!)
        startArray.append(Double(start5.text!)!)
        startArray.append(Double(start6.text!)!)
        startArray.append(Double(start7.text!)!)
        startArray.append(Double(start8.text!)!)
        startArray.append(Double(start9.text!)!)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboard()
        
        start1.keyboardType = UIKeyboardType.decimalPad
        start2.keyboardType = UIKeyboardType.decimalPad
        start3.keyboardType = UIKeyboardType.decimalPad
        start4.keyboardType = UIKeyboardType.decimalPad
        start5.keyboardType = UIKeyboardType.decimalPad
        start6.keyboardType = UIKeyboardType.decimalPad
        start7.keyboardType = UIKeyboardType.decimalPad
        start8.keyboardType = UIKeyboardType.decimalPad
        start9.keyboardType = UIKeyboardType.decimalPad
        
        print(numPlayers)
        
        if Int(numPlayers) == 2 {
            name3.isHidden = true
            start3.isHidden = true
            name4.isHidden = true
            start4.isHidden = true
            name5.isHidden = true
            start5.isHidden = true
            name6.isHidden = true
            start6.isHidden = true
            name7.isHidden = true
            start7.isHidden = true
            name8.isHidden = true
            start8.isHidden = true
            name9.isHidden = true
            start9.isHidden = true
        } else if numPlayers == "3" {
            name4.isHidden = true
            start4.isHidden = true
            name5.isHidden = true
            start5.isHidden = true
            name6.isHidden = true
            start6.isHidden = true
            name7.isHidden = true
            start7.isHidden = true
            name8.isHidden = true
            start8.isHidden = true
            name9.isHidden = true
            start9.isHidden = true
        } else if numPlayers == "4" {
            name5.isHidden = true
            start5.isHidden = true
            name6.isHidden = true
            start6.isHidden = true
            name7.isHidden = true
            start7.isHidden = true
            name8.isHidden = true
            start8.isHidden = true
            name9.isHidden = true
            start9.isHidden = true
        } else if numPlayers == "5" {
            name6.isHidden = true
            start6.isHidden = true
            name7.isHidden = true
            start7.isHidden = true
            name8.isHidden = true
            start8.isHidden = true
            name9.isHidden = true
            start9.isHidden = true
        } else if numPlayers == "6" {
            name7.isHidden = true
            start7.isHidden = true
            name8.isHidden = true
            start8.isHidden = true
            name9.isHidden = true
            start9.isHidden = true
        } else if numPlayers == "7" {
            name8.isHidden = true
            start8.isHidden = true
            name9.isHidden = true
            start9.isHidden = true
        } else if numPlayers == "8" {
            name9.isHidden = true
            start9.isHidden = true
        } else {
            // do nothing
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




extension UIViewController
{
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard()
    {
        view.endEditing(true)
    }
}
