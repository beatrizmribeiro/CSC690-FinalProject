
//
//  Milestones7to9ViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/10/21.
//

import Foundation
import UIKit

class Milestones7to9ViewController: UIViewController {
    
    var strings:[String] = []
    var strings2:[String] = []
    var strings3:[String] = []


    @IBOutlet weak var textM: UITextView!
    @IBOutlet weak var textM2: UITextView!
    @IBOutlet weak var textM3: UITextView!
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "Sits without support"
        let bullet2 = "Sits and reaches for toys without falling"
        let bullet3 = "Moves from tummy or back into sitting"
        let bullet4 = "Starts to move with alternate leg and arm movement e.g. creeping, crawling"
        let bullet5 = "Picks up head and pushes through elbows during Tummy Time"
        let bullet6 = "Turns head to visually track objects while sitting"
        let bullet7 = "Enjoys a variety of movements – bouncing up and down, rocking back and forth"
        let bullet8 = "Explores and examines an object using both hands and mouth"
        let bullet9 = "Turns several pages of a chunky (board) book at once"
        let bullet10 = "Experiments with the amount of force needed to pick up different objects"
        let bullet11 = "Focuses on objects near and far"
        let bullet12 = "Investigates shapes, sizes, and textures of toys and surroundings"
        let bullet13 = "Uses increased variety of sounds and syllable combinations in babbling"
        let bullet14 = "Looks at familiar objects and people when named"
        let bullet15 = "Recognizes sound of their name"
        let bullet16 = "Participates in two-way communication"
        let bullet17 = "Follows some routine commands when paired with gestures"
        let bullet18 = "Shows recognition of commonly used words"

         
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
