//
//  ViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: "launch.png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        let quizDestination = segue.destination as! QuizViewController
        
        quizDestination.title = "Do you Know DAY6?"
    }
}

