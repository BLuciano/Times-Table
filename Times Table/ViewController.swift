//
//  ViewController.swift
//  Times Table
//
//  Created by Luciano Bruzzoni on 5/9/18.
//  Copyright © 2018 Luciano Bruzzoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var rows = 50
    var times = 1
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func changeValue(_ sender: Any) {
        times = Int(sliderValue.value)
        tableView.reloadData()
    }

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell" )
        cell.textLabel?.text = String((indexPath.row + 1) * times)
        return cell
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

