//
//  MenteeCatViewController.swift
//  Movin-On-Up
//
//  Created by Rolman De los Santos on 3/24/18.
//  Copyright © 2018 Rolman De los Santos. All rights reserved.
//

import UIKit

class MenteeCatViewController: UIViewController {
let race = ["African American", "American Indian", "White", "Japanese","Other"]
     @IBOutlet weak var racePick: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        racePick.delegate = self
        racePick.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
 
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return race.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return race[row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
