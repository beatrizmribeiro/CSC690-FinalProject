
//
//  Milestones4to6ViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/10/21.
//

import Foundation
import UIKit

class Milestones4to6ViewController: UIViewController {
    
    var strings:[String] = []
    var strings2:[String] = []
    var strings3:[String] = []


    @IBOutlet weak var textM: UITextView!
    @IBOutlet weak var textM2: UITextView!
    @IBOutlet weak var textM3: UITextView!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "Uses hands to support self while sitting"
        let bullet2 = "Rolls from back to tummy and tummy to back"
        let bullet3 = "While standing with support, accepts entire weight with legs"
        let bullet4 = "Reaches for nearby toys while on tummy"
        let bullet5 = "While lying on back, reaches both hands to play with feet"
        let bullet6 = "While lying on back, transfers a toy from one hand to the other"
        let bullet7 = "Uses both hands to explore toys"
        let bullet8 = "Generally happy when not hungry or tired"
        let bullet9 = "Brings hands and objects to mouth"
        let bullet10 = "Able to calm with rocking, touching, and gentle sounds"
        let bullet11 = "Is not upset by everyday sounds"
        let bullet12 = "Enjoys a variety of movements"
        let bullet13 = "Reacts to sudden noises or sounds"
        let bullet14 = "Listens and responds when spoken to"
        let bullet15 = "Begins to use consonant sounds in babbling, e.g. “da, da, da”"
        let bullet16 = "Makes different kinds of sounds to express feelings"
        let bullet17 = "Notices toys that make sounds"
        let bullet18 = "Uses babbling to get attention"

         
        strings = [bullet1, bullet2, bullet3, bullet4, bullet5, bullet6]
        strings2 = [bullet7, bullet8, bullet9, bullet10, bullet11, bullet12]
        strings3 = [bullet13, bullet14, bullet15, bullet16, bullet17, bullet18]
         
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

