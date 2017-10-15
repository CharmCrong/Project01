//
//  QuizViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var segMember: UISegmentedControl!
    @IBOutlet var txtDrum: UITextField!
    @IBOutlet var pickerDebutDate: UIDatePicker!
    @IBOutlet var segDebutSong: UISegmentedControl!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    let answer1: String = "5명"
    let answer2: String = "도운"
    let answer3: String = "Sep 7, 2015"
    let answer4: String = "Congratulations"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func checkAnswer(_ sender: Any?) {
        
        let checkAnswer1: String = segMember.titleForSegment(at: segMember.selectedSegmentIndex)!
        
        let checkAnswer2: String = txtDrum.text!
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        let checkAnswer3: String = dateFormatter.string(from: self.pickerDebutDate.date)
        
        let checkAnswer4: String = segDebutSong.titleForSegment(at: segDebutSong.selectedSegmentIndex)!
        
        if answer1 == checkAnswer1 {
            label1.text = "정답입니다. DAY6의 멤버는 5명입니다."
            label1.textColor = UIColor.green
        } else {
            label1.text = "오답입니다. DAY6의 멤버는 5명입니다."
            label1.textColor = UIColor.red
        }
        
        if answer2 == checkAnswer2 {
            label2.text = "정답입니다. 드럼을 치는 멤버는 '도운'입니다."
            label2.textColor = UIColor.green
        } else {
            label2.text = "오답입니다. 드럼을 치는 멤버는 '도운'입니다."
            label2.textColor = UIColor.red
        }
        
        if answer3 == checkAnswer3 {
            label3.text = "정답입니다. DAY6의 데뷔일은 2015년 9월 7일입니다."
            label3.textColor = UIColor.green
        } else {
            label3.text = "오답입니다. DAY6의 데뷔일은 2015년 9월 7일입니다."
            label3.textColor = UIColor.red
        }
        
        if answer4 == checkAnswer4 {
            label4.text = "정답입니다. DAY6의 데뷔곡은 'Congratulations'입니다."
            label4.textColor = UIColor.green
        } else {
            label4.text = "오답입니다. DAY6의 데뷔곡은 'Congratulations'입니다."
            label4.textColor = UIColor.red
        }
    }
    
}
