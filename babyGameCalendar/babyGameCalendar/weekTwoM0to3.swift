//
//  weekTwoM0to3.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/12/21.
//

import Foundation
import UIKit
import WebKit
import AVKit

class weekTwoM0to3: UIViewController, UIWebViewDelegate {
    

    @IBOutlet weak var textM: UITextView!
    @IBOutlet weak var myWebView: WKWebView!
    
    var strings:[String] = []

    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "Evolving Mobile: Every couple of weeks add or change the toys hanging from an overhead mobile or play mat to grab baby's attention. Wiggling the toys can also help baby look at the new toys. When baby is able to sit up, take down the mobile due to safety risks. Helps baby develop vision by providing interesting objects and colors to look at."
        let bullet2 = "Sleeping Direction: Change the direction baby lies while sleeping. Place their head on the right side of the crib, then switch to the left side the next night. Repeat. Don't forget to always place baby on back to sleep. Helps baby build strength by turning different directions to see you."
        let bullet3 = "If your baby’s mobile plays music, sing along with the songs. Hold their hand or rock them while you sing."
        

         
        strings = [bullet1, bullet2, bullet3]
        
        var fullString = ""
         
        for string: String in strings
        {
            let bulletPoint: String = "\u{2022}"
            let formattedString: String = "\(bulletPoint) \(string)\n\n"
 
            fullString = fullString + formattedString
        }

         
        textM.text = fullString
       
        getVideo(videoCode: "KrHwIUU7ISA")
        
        func getVideo(videoCode: String){
            let url = URL (string: "https://www.youtube.com/embed/\(videoCode)")
            myWebView.load(URLRequest(url: url!))
        }

        }

}
