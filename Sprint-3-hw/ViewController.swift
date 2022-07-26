//
//  ViewController.swift
//  Sprint-3-hw
//
//  Created by a.malginov on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var clearLabelButton: UIButton!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счётчика: \n\n 0"
        counterLabel.backgroundColor = .lightGray
        counterLabel.layer.masksToBounds = true
        counterLabel.layer.cornerRadius = 10
    }
    
    func setupView() {
        view.backgroundColor = UIColor(named: "backgroundColor")
    }

    @IBAction func tapButton(_ sender: Any) {
        count += 1
        returnCountLabelText()
    }
    
    @IBAction func clearLabelButton(_ sender: Any) {
        count = 0
        returnCountLabelText()
    }
    
    func returnCountLabelText() {
        counterLabel.text = "Значение счётчика: \n\n \(count)"
    }
}

