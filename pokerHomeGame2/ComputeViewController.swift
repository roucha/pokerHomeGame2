//
//  ComputeViewController.swift
//  pokerHomeGame2
//
//  Created by Vlad Barash on 1/11/17.
//  Copyright © 2017 Vlad Barash. All rights reserved.
//

import Foundation
import UIKit

class ComputeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    var numPlayers:String = ""
    var nameArray:Array = [String]()
    var startArray:Array = [Double]()
    var endArray:Array = [Double]()
    
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    @IBOutlet var tableView1: UITableView!
    



    var myArray = [String]()



    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView1.register(UITableViewCell.self, forCellReuseIdentifier: "cell")


        tableView1.delegate = self
        tableView1.dataSource = self
        
        //tableView1.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
        
        
        self.hideKeyboard()
        
        print(numPlayers)
        print(nameArray)
        print(startArray)
        print(endArray)
        
        var difference = [String: Double]()
        
        difference[nameArray[0]] = endArray[0] - startArray[0]
        difference[nameArray[1]] = endArray[1] - startArray[1]
        difference[nameArray[2]] = endArray[2] - startArray[2]
        difference[nameArray[3]] = endArray[3] - startArray[3]
        difference[nameArray[4]] = endArray[4] - startArray[4]
        difference[nameArray[5]] = endArray[5] - startArray[5]
        difference[nameArray[6]] = endArray[6] - startArray[6]
        difference[nameArray[7]] = endArray[7] - startArray[7]
        
        var nameSorted = [String]()
        var differenceSorted = [Double]()
        
        for (k,v) in Array(difference).sorted(by: {$0.1 < $1.1}) {
            nameSorted.append(k)
            differenceSorted.append(v)
        }
        
        // proceed to loop through and determine who owes who what, only if the starting and ending chip counts match
        
        var results = ""
        
        var y = differenceSorted.count - 1
        
        for i in 0...nameSorted.count-1 {
            
            while differenceSorted[i] < 0 {
                
                if abs(differenceSorted[i]) > differenceSorted[y] {
                    let name = nameSorted[i]
                    let amount = String(abs(differenceSorted[y]))
                    let name2 = nameSorted[y]
                    let r = name + " to send " + amount + " to " + name2
                    
                    results = results + "\n" + r
                    
                    myArray.append(r)
                    
                    differenceSorted[i] += differenceSorted[y]
                    differenceSorted[y] -= differenceSorted[y]
                } else if abs(differenceSorted[i]) <= differenceSorted[y] {
                    let name = nameSorted[i]
                    let amount = String(abs(differenceSorted[i]))
                    let name2 = nameSorted[y]
                    let r = name + " to send " + amount + " to " + name2
                    
                    results = results + "\n" + r
                    myArray.append(r)
                    
                    
                    differenceSorted[y] -= abs(differenceSorted[i])
                    differenceSorted[i] += abs(differenceSorted[i])
                }
                
                if differenceSorted[y] == 0 {
                    y-=1
                }
                
            }
            
        }
        
        
        print(results)
        resultsLabel.text = results
        
        
        theResults = results
        
        //myArray = ["testing", "onetwo"]

        tableView1.reloadData()
        
        
        
    }
    
    
    var theResults = "..."

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let cell = self.tableView1.dequeueReusableCell(withIdentifier: cellIdentifier, for : indexPath) as UITableViewCell
        
        //Configure the cell...
        //cell.textLabel?.text = departmentNames[indexPath.row]
        //cell.textLabel?.text = theResults
        
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.textLabel?.text = myArray[indexPath.row]
        return cell
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



