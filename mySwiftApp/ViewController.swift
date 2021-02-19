//
//  ViewController.swift
//  mySwiftApp
//
//  Created by Masaru Hokamura on 2021/02/18.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(counter)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func up(_ sender: Any) {
        countUp()
        changeColor()
    }
    @IBAction func down(_ sender: Any) {
        countDown()
        changeColor()
    }
    
    func countUp() {
        counter = counter + 1
        countLabel.text = String(counter)
    }
    func countDown() {
        counter = counter - 1
        countLabel.text = String(counter)
    }
    func changeColor() {
        if counter < 10 {
            countLabel.textColor = .black
        }
        if counter >= 10 {
            countLabel.textColor = .red
        }
    }

    
}

