//
//  File.swift
//  Counter
//
//  Created by Irina Deeva on 30/03/23.
//

import UIKit


class HistoryViewController: UIViewController {
    private var history: History = .history
    @IBOutlet private weak var historyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "History"
        
        if let tableView = historyTableView {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        historyTableView.reloadData()
    }
}

extension HistoryViewController: UITableViewDelegate {}

extension HistoryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.steps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = history.steps[indexPath.row]
        
        return cell
    }
    

    
}
