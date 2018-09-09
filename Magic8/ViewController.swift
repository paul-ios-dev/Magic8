//
//  ViewController.swift
//  Magic8
//
//  Created by Kang Paul on 2018/8/26.
//  Copyright © 2018年 Kang Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var answerIndex: Int = 0
    let answers = ["Ball1", "Ball2", "Ball3", "Ball4", "Ball5"]
    
    @IBOutlet weak var answerBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func askAnswer() {
        answerIndex = Int(arc4random_uniform(5))
        //print(answerIndex)
        answerBall.image = UIImage(named: answers[answerIndex])
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        askAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askAnswer()
    }
}

