//
//  ViewController.swift
//  Counter
//
//  Created by Irina Deeva on 20/03/23.
//

import UIKit

class ViewController: UIViewController {
    private var counter = 0
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var substractButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var history: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func add(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        history.text.append(contentsOf: "\n[\(Date().dateToString())]: значение изменено на +1")
    }
    
    @IBAction func substract(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
            history.text.append(contentsOf: "\n[\(Date().dateToString())]: значение изменено на -1")
        } else {
            history.text.append(contentsOf: "\n[\(Date().dateToString())]: попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    
    @IBAction func restart(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        history.text.append(contentsOf: "\n[\(Date().dateToString())]: значение сброшено")
    }
}

