//
//  weekThreeM0to3.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/12/21.
//

import Foundation
import UIKit
import WebKit
import AVKit

class weekThreeM0to3: UIViewController, UIWebViewDelegate {

    
    @IBOutlet weak var textM: UITextView!
    @IBOutlet weak var myWebView: WKWebView!
    var strings:[String] = []

    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "Beep Baby: Tap baby in different places and say the name of each body part. Then say “beep” or make another sound after each new body part you touch. They may start watching your hands and anticipating each touch. Helps baby develop their sense of touch and body awareness."
        let bullet2 = "Raise to Sit: Place baby on their back facing you. Put your hands behind their shoulders and head for support and slowly raise them to a sitting position. Keep repeating this movement. Once baby can support their head, you can practice while holding their hands. Helps baby build strength."
        let bullet3 = "Gentle Strokes: Before feeding, gently stroke baby’s lips with nipple or bottle to encourage mouth to open for feeding. Be sure to present the nipple/bottle in the middle of mouth. Helps baby latch on for feeding."
        

         
        strings = [bullet1, bullet2, bullet3]
        
        var fullString = ""
         
        for string: String in strings
        {
            let bulletPoint: String = "\u{2022}"
            let formattedString: String = "\(bulletPoint) \(string)\n\n"
 
            fullString = fullString + formattedString
        }

         
        textM.text = fullString
       
        getVideo(videoCode: "0uUxuN21XNY")
        
        func getVideo(videoCode: String){
            let url = URL (string: "https://www.youtube.com/embed/\(videoCode)")
            myWebView.load(URLRequest(url: url!))
        }

        }

}
