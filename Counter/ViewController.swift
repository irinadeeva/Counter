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
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func add(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
        
    }
}

