//
//  PickerViewController.swift
//  Movin-On-Up
//
//  Created by Rolman De los Santos on 3/24/18.
//  Copyright © 2018 Rolman De los Santos. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerAgeDataSource.count;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerAgeDataSource[row] as String
    }
    


    @IBOutlet weak var Age: UIPickerView!
    var pickerAgeDataSource = ["5-9 years old", "10-12 years old", "13-21"];
    /*@IBOutlet weak var Gender: UIPickerView!
    var pickerGenderDataSource = ["India", "Australia", "United   Kingdom", "South Africa"];
    @IBOutlet weak var Race: UIPickerView!
    var pickerRaceDataSource = ["India", "Australia", "United   Kingdom", "South Africa"];*/
    override func viewDidLoad() {
        super.viewDidLoad()
        Age.delegate=self
        Age.dataSource = self
        /*Gender.delegate=self
        Gender.dataSource = self
        Race.delegate=self
        Race.dataSource = self*/

        // Do any additional setup after loading the view.
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
