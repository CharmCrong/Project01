//
//  SelectViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var pickerSelect: UIPickerView!
    
    
    @IBOutlet var imgDay6: UIImageView!
    
    let selectArray: [String] = ["Member", "Album"]
    var txtSelect: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgDay6.image = UIImage(named: "day1.jpg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        let infoDestination = segue.destination as! InfoViewController
        
        infoDestination.choice = txtSelect
        infoDestination.title = txtSelect
    }
    
    @IBAction func getValue() {
        txtSelect = selectArray[self.pickerSelect.selectedRow(inComponent: 0)]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return selectArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return selectArray[row]
    }
}
