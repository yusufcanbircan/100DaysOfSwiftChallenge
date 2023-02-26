//
//  ViewController.swift
//  Project-5(Day27-29)
//
//  Created by Yusuf Can Bircan on 26.02.2023.
//

import UIKit

class ViewController: UITableViewController {
    
    var allWords: [String] = []
    var usedWords: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let startWordsUrl = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsUrl) {
                allWords = startWords.components(separatedBy: "\n")
            }
        }
        
        if allWords.isEmpty {
            allWords = ["silkworm"]
        }
        
        startGame()
    }
    
    func startGame () {
        
        title = allWords.randomElement()
        usedWords.removeAll(keepingCapacity: true)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Words", for: indexPath)
        cell.textLabel?.text = usedWords[indexPath.row]

        return cell
    }


}

