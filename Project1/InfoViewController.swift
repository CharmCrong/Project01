//
//  InfoViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var labelName1: UILabel!
    @IBOutlet var labelName2: UILabel!
   
    @IBOutlet var labelDate1: UILabel!
    @IBOutlet var labelDate2: UILabel!
    
    @IBOutlet var labelPosition1: UILabel!
    @IBOutlet var labelPosition2: UILabel!
    
    @IBOutlet var pickerDay6: UIPickerView!
    
    @IBOutlet var imgMember: UIImageView!
    
    @IBOutlet var songScrollView: UIScrollView!
    
    var choice: String!
    
    let memberDay6Array: [String] = ["성진", "Jae", "Young K", "원필", "도운"]
    let albumDay6Array: [String] = ["The Day", "DAYDREAM", "Every DAY6 January", "Every DAY6 February", "Every DAY6 March", "Every DAY6 April", "Every DAY6 May", "SUNRISE", "Every DAY6 July", "Every DAY6 August", "Every DAY6 September", "Every DAY6 October"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        if choice == "Member" {
            labelName1.text = "이름"
            labelName2.text = "성진(박성진)"
            labelDate1.text = "생년월일"
            labelDate2.text = "1993년 1월 16일"
            labelPosition1.text = "포지션"
            labelPosition2.text = "보컬 및 기타"
            imgMember.image = UIImage(named: "sj.jpg")
        } else {
            labelName1.text = "앨범명"
            labelName2.text = "The Day"
            labelDate1.text = "발매일"
            labelDate2.text = "2015년 9월 7일"
            labelPosition1.text = "타이틀곡"
            labelPosition2.text = "Congratulations"
            imgMember.image = UIImage(named: "album1.jpg")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if choice == "Member" {
            return memberDay6Array.count
        } else{
    
            return albumDay6Array.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if choice == "Member" {
            return memberDay6Array[row]
        } else {
       
            return albumDay6Array[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if choice == "Member" {
            let txtMember: String = memberDay6Array[row]
            
            switch txtMember {
            case "성진":
                labelName1.text = "이름"
                labelName2.text = "성진(박성진)"
                labelDate1.text = "생년월일"
                labelDate2.text = "1993년 1월 16일"
                labelPosition1.text = "포지션"
                labelPosition2.text = "보컬 및 기타"
                imgMember.image = UIImage(named: "sj.jpg")
            case "Jae":
                labelName1.text = "이름"
                labelName2.text = "Jae(박제형)"
                labelDate1.text = "생년월일"
                labelDate2.text = "1992년 9월 15일"
                labelPosition1.text = "포지션"
                labelPosition2.text = "보컬 및 기타"
                imgMember.image = UIImage(named: "jae.jpg")
            case "Young K":
                labelName1.text = "이름"
                labelName2.text = "Young K(강영현)"
                labelDate1.text = "생년월일"
                labelDate2.text = "1993년 12월 19일"
                labelPosition1.text = "포지션"
                labelPosition2.text = "보컬 및 베이스"
                imgMember.image = UIImage(named: "yk.jpg")
            case "원필":
                labelName1.text = "이름"
                labelName2.text = "원필(김원필)"
                labelDate1.text = "생년월일"
                labelDate2.text = "1994년 4월 28일"
                labelPosition1.text = "포지션"
                labelPosition2.text = "보컬 및 키보드 및 신디사이저"
                imgMember.image = UIImage(named: "wp.jpg")
            case "도운":
                labelName1.text = "이름"
                labelName2.text = "도운(윤도운)"
                labelDate1.text = "생년월일"
                labelDate2.text = "1995년 8월 25일"
                labelPosition1.text = "포지션"
                labelPosition2.text = "드럼"
                imgMember.image = UIImage(named: "dw.jpg")
            default:
                break
            }
        }
        
        if choice == "Album" {
            let txtMember: String = albumDay6Array[row]
        
            switch txtMember {
            case "The Day":
                labelName1.text = "앨범명"
                labelName2.text = "The Day"
                labelDate1.text = "발매일"
                labelDate2.text = "2015년 9월 7일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "Congratulations"
                imgMember.image = UIImage(named: "album1.jpg")
            case "DAYDREAM":
                labelName1.text = "앨범명"
                labelName2.text = "DAYDREAM"
                labelDate1.text = "발매일"
                labelDate2.text = "2016년 3월 30일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "놓아 놓아 놓아"
                imgMember.image = UIImage(named: "album2.jpg")
            case "Every DAY6 January":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 January"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 1월 6일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "아 왜(I Wait)"
                imgMember.image = UIImage(named: "album3.jpg")
            case "Every DAY6 February":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 February"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 2월 6일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "예뻤어"
                imgMember.image = UIImage(named: "album4.jpg")
            case "Every DAY6 March":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 March"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 3월 6일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "어떻게 말해"
                imgMember.image = UIImage(named: "album5.jpg")
            case "Every DAY6 April":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 April"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 4월 6일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "장난 아닌데"
                imgMember.image = UIImage(named: "album6.jpg")
            case "Every DAY6 May":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 May"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 5월 8일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "DANCE DANCE"
                imgMember.image = UIImage(named: "album7.jpg")
            case "SUNRISE":
                labelName1.text = "앨범명"
                labelName2.text = "SUNRISE"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 6월 7일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "반듣시 웃는다"
                imgMember.image = UIImage(named: "album8.jpg")
            case "Every DAY6 July":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 July"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 7월 6일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "Hi Hello"
                imgMember.image = UIImage(named: "album9.jpg")
            case "Every DAY6 August":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 August"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 8월 7일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "좋은 걸 뭐 어떡해"
                imgMember.image = UIImage(named: "album10.jpg")
            case "Every DAY6 September":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 September"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 9월 6일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "I Loved You"
                imgMember.image = UIImage(named: "album11.jpg")
            case "Every DAY6 October":
                labelName1.text = "앨범명"
                labelName2.text = "Every DAY6 October"
                labelDate1.text = "발매일"
                labelDate2.text = "2017년 9월 29일"
                labelPosition1.text = "타이틀곡"
                labelPosition2.text = "그렇더라고요"
                imgMember.image = UIImage(named: "album12.jpg")
            default:
                break
            }
        }
    }
}
