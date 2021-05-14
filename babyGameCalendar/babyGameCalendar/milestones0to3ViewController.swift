//
//  milestones0to3ViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/10/21.
//

import Foundation
import UIKit

class Milestones0to3ViewController: UIViewController {
    
    var strings:[String] = []
    var strings2:[String] = []
    var strings3:[String] = []


    
    @IBOutlet weak var textM: UITextView!
    @IBOutlet weak var textM2: UITextView!
    @IBOutlet weak var textM3: UITextView!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "While lying on tummy, pushes up on arms"
        let bullet2 = "While lying on tummy, lifts and holds head up"
        let bullet3 = "Able to move fists from closed to open"
        let bullet4 = "Able to bring hands to mouth"
        let bullet5 = "Moves legs and arms off of surface when excited"
        let bullet6 = "While lying on back, attempts to reach for a toy held above their chest"
        let bullet7 = "While lying on back, visually tracks a moving toy from side to side"
        let bullet8 = "While lying on back, keeps head centered to watch faces or toys"
        let bullet9 = "Able to calm with rocking, touching, and gentle sounds"
        let bullet10 = "Enjoys a variety of movements"
        let bullet11 = "Quiets or smiles in response to sound or voice"
        let bullet12 = "Turns head towards sound or voice"
        let bullet13 = "Shows interest in faces"
        let bullet14 = "Makes eye contacth"
        let bullet15 = "Cries differently for different needs (e.g. hungry vs. tired)"
        let bullet16 = "Coos and smiles"

         
        strings = [bullet1, bullet2, bullet3, bullet4, bullet5]
        strings2 = [bullet6, bullet7, bullet8, bullet9, bullet10]
        strings3 = [bullet11, bullet12, bullet13, bullet14, bullet15, bullet16]
         
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
