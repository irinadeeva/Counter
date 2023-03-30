//
//  ViewController.swift
//  Counter
//
//  Created by Irina Deeva on 20/03/23.
//

import UIKit

class CounterViewController: UIViewController {
    private var counter = 0
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var addButton: UIButton!
    @IBOutlet private weak var substractButton: UIButton!
    @IBOutlet private weak var restartButton: UIButton!
    private var history: History = .history
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction private func add(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        history.steps.append("[\(Date().dateToString())]: add +1")
    }
    
    @IBAction private func subtract(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
            history.steps.append("[\(Date().dateToString())]: subtract -1")
        } else {
            history.steps.append("[\(Date().dateToString())]: try to subtract while 0")
        }
    }
    
    
    @IBAction private func restart(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        history.steps.append("[\(Date().dateToString())]: restart")
    }
}



