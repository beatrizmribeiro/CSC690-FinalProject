//
//  weekFourM0to3.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/12/21.
//

import Foundation
import UIKit
import WebKit
import AVKit

class weekFourM0to3: UIViewController, UIWebViewDelegate {

    
    @IBOutlet weak var textM: UITextView!
    @IBOutlet weak var myWebView: WKWebView!
    
    var strings:[String] = []

    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "Head Lifts: Baby should be starting to lift head a little bit when doing Tummy Time. Get baby to move by dangling a toy to look up at. Helps baby improve neck and head control."
        let bullet2 = "Keep a Diary: Track things like baby’s motor milestones, how often they eat, and how many ounces are eaten per day. This helps you track baby’s growth and lets doctors check baby’s day-to-day activities and patterns. If you are concerned about baby’s development, be sure to share the diary with your healthcare provider."
        let bullet3 = "Massage Feeding: Give baby a little massage on their arms, legs, and back before showing them the nipple or bottle. Helps increase baby’s alertness to help with feeding. "
        

         
        strings = [bullet1, bullet2, bullet3]
        
        var fullString = ""
         
        for string: String in strings
        {
            let bulletPoint: String = "\u{2022}"
            let formattedString: String = "\(bulletPoint) \(string)\n\n"
 
            fullString = fullString + formattedString
        }

         
        textM.text = fullString
       
        getVideo(videoCode: "CJPu_bDus3Q")
        
        func getVideo(videoCode: String){
            let url = URL (string: "https://www.youtube.com/embed/\(videoCode)")
            myWebView.load(URLRequest(url: url!))
        }

        }

}
