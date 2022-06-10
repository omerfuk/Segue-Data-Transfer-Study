//
//  SecondViewController.swift
//  SELFSTUDYSEGUE
//
//  Created by Ömer Faruk Kılıçaslan on 9.06.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var targetName: String = ""

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = targetName
    }
    

}
