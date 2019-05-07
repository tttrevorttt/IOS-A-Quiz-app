//
//  ResultsViewController.swift
//  QuizA+
//
//  Created by Trevor on 5/2/19.
//  Copyright © 2019 Trevor Gorham. All rights reserved.
//

import UIKit
import Foundation

class ResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let questions = QuestionBank()
    
    var Precent = ""
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return (questions.list.count)
    }
    
    
    @IBOutlet weak var PercentUP: UILabel!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        
        cell.textLabel?.numberOfLines = 0;
        cell.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        cell.textLabel?.text = questions.list[indexPath.row].questionText
        return(cell)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        PercentUP.text = Precent + "%"
        
    }
    
    
}
