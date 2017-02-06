//
//  ViewController.swift
//  pokerHomeGame2
//
//  Created by Vlad Barash on 1/11/17.
//  Copyright © 2017 Vlad Barash. All rights reserved.
//


/*
 To Do:
 
 - tableview instead of label
 - make computeViewController fit on an iPhone 7
 - save data entered into fields even when app goes to background
 - save previous 'scores' of who won, sort of leaderboard feature?
 - 
 
 
 
 
*/




import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var pickerViewSelected = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "segue1" {
            let v = segue.destination as! ComputeViewController
            
            v.numPlayers = pickerViewSelected
        } else {
            
        }
    }
    
    @IBOutlet weak var pickerView: UIPickerView!

    var data = ["2", "3", "4", "5", "6", "7", "8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
        
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerViewSelected = data[row]
        //print("***")
        return data[row]
        
        
    }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerViewSelected = data[row]
        //print("***")
        //print("!!!")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

