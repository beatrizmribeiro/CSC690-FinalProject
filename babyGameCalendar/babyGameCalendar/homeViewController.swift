//
//  homeViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/7/21.
//

import UIKit

class homeViewController: UIViewController {


    @IBOutlet weak var parentsBabyImage: UIImageView!
    
    @IBOutlet weak var parentsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parentsBabyImage.layer.masksToBounds = true
        parentsBabyImage.layer.cornerRadius = parentsBabyImage.bounds.width / 2
        
        
     }
}


