//
//  ComputeViewController.swift
//  pokerHomeGame2
//
//  Created by Vlad Barash on 1/11/17.
//  Copyright © 2017 Vlad Barash. All rights reserved.
//

import Foundation
import UIKit

class ComputeViewController: UIViewController {
    
    
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var start1: UITextField!
    @IBOutlet weak var end1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var start2: UITextField!
    @IBOutlet weak var end2: UITextField!
    @IBOutlet weak var name3: UITextField!
    @IBOutlet weak var start3: UITextField!
    @IBOutlet weak var end3: UITextField!
    @IBOutlet weak var name4: UITextField!
    @IBOutlet weak var start4: UITextField!
    @IBOutlet weak var end4: UITextField!
    @IBOutlet weak var name5: UITextField!
    @IBOutlet weak var start5: UITextField!
    @IBOutlet weak var end5: UITextField!
    @IBOutlet weak var name6: UITextField!
    @IBOutlet weak var start6: UITextField!
    @IBOutlet weak var end6: UITextField!
    @IBOutlet weak var name7: UITextField!
    @IBOutlet weak var start7: UITextField!
    @IBOutlet weak var end7: UITextField!
    @IBOutlet weak var name8: UITextField!
    @IBOutlet weak var start8: UITextField!
    @IBOutlet weak var end8: UITextField!
    
    
    @IBAction func compute(_ sender: Any) {
        
        //Iff total starting chip count == total ending chip count
        
        
        
        //create sorted arrays of values (dictionaries are unsorted)
        
        var nameArray = [String]()
        var startArray = [Double]()
        var endArray = [Double]()
        var difference = [String: Double]()
        
        nameArray.append(name1.text!)
        nameArray.append(name2.text!)
        nameArray.append(name3.text!)
        
        startArray.append(Double(start1.text!)!)
        startArray.append(Double(start2.text!)!)
        startArray.append(Double(start3.text!)!)
        
        endArray.append(Double(end1.text!)!)
        endArray.append(Double(end2.text!)!)
        endArray.append(Double(end3.text!)!)
        
        difference[nameArray[0]] = endArray[0] - startArray[0]
        difference[nameArray[1]] = endArray[1] - startArray[1]
        difference[nameArray[2]] = endArray[2] - startArray[2]
        

//        print(difference)
//        print("****")
        
        var nameSorted = [String]()
        var differenceSorted = [Double]()
        
        for (k,v) in Array(difference).sorted(by: {$0.1 < $1.1}) {
            nameSorted.append(k)
            differenceSorted.append(v)
        }
        
        print(nameSorted)
        print(differenceSorted)
        
        
        
        
        
        //loop through and determine who owes who what
        
        
        for i in 0...nameSorted.count-1 {
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("hi")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

