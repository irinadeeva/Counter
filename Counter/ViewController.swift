//
//  ViewController.swift
//  Counter
//
//  Created by Irina Deeva on 20/03/23.
//

import UIKit

class ViewController: UIViewController {
    private var counter = 0
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var addButton: UIButton!
    @IBOutlet private weak var substractButton: UIButton!
    @IBOutlet private weak var restartButton: UIButton!
    @IBOutlet private weak var history: UITextView!
    @IBOutlet private weak var historyTableView: UITableView!
    
    
    override private func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func add(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        history.text.append(contentsOf: "\n[\(Date().dateToString())]: значение изменено на +1")
    }
    
    @IBAction private func subtract(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
            history.text.append(contentsOf: "\n[\(Date().dateToString())]: значение изменено на -1")
        } else {
            history.text.append(contentsOf: "\n[\(Date().dateToString())]: попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    
    @IBAction private func restart(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        history.text.append(contentsOf: "\n[\(Date().dateToString())]: значение сброшено")
    }
}

