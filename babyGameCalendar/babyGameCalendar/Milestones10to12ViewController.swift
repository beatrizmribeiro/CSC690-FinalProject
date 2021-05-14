//
//  Milestones10to12ViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/10/21.
//

import Foundation
import UIKit

class Milestones10to12ViewController: UIViewController {
    
    var strings:[String] = []
    var strings2:[String] = []
    var strings3:[String] = []


    @IBOutlet weak var textM: UITextView!
    @IBOutlet weak var textM2: UITextView!
    @IBOutlet weak var textM3: UITextView!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "Pulls to stand and cruises along furniture"
        let bullet2 = "Stands alone and takes several independent steps"
        let bullet3 = "Moves in and out of various positions to explore environment and get desired toys"
        let bullet4 = "Maintains balance in sitting when throwing objects"
        let bullet5 = "Claps hands"
        let bullet6 = "Releases objects into a container with a large opening"
        let bullet7 = "Uses thumb and pointer finger to pick up tiny objects"
        let bullet8 = "Enjoys listening to songs"
        let bullet9 = "Explores toys with fingers and mouth"
        let bullet10 = "Crawls to or away from objects baby sees in the distance"
        let bullet11 = "Meaningfully uses “mama” or “dada”"
        let bullet12 = "Responds to simple directions, e.g. “Come here”"
        let bullet13 = "Produces long strings of gibberish (jargoning) in social communication"
        let bullet14 = "Says one or two words"
        let bullet15 = "Imitates speech sounds"
        let bullet16 = "Babbling has sounds and rhythms of speech"
        let bullet17 = "Pays attention to where you are looking and pointing"
        let bullet18 = "Responds to “no”"

         
        strings = [bullet1, bullet2, bullet3, bullet4, bullet5, bullet6, bullet7]
        strings2 = [bullet8, bullet9, bullet10]
        strings3 = [bullet11, bullet12, bullet13, bullet14, bullet15, bullet16, bullet17, bullet18]
         
        var fullString = ""
         
        for string: String in strings
        {
            let bulletPoint: String = "\u{2022}"
            let formattedString: String = "\(bulletPoint) \(string)\n"
 
            fullString = fullString + formattedString
        }
        var fullString2 = ""
        
        for string2: String in strings2
        {
            let bulletPoint2: String = "\u{2022}"
            let formattedString2: String = "\(bulletPoint2) \(string2)\n"
 
            fullString2 = fullString2 + formattedString2
        }
         
        var fullString3 = ""
        
        for string3: String in strings3
        {
            let bulletPoint3: String = "\u{2022}"
            let formattedString3: String = "\(bulletPoint3) \(string3)\n"
 
            fullString3 = fullString3 + formattedString3
        }
         
        textM.text = fullString
        textM2.text = fullString2
        textM3.text = fullString3
        
        

        }

}
