//
//  weekOneM0to3.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/11/21.
//

import Foundation
import UIKit
import WebKit
import AVKit

class weekOneM0to3: UIViewController, UIWebViewDelegate {
    
   
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var textM: UITextView!
    
    var strings:[String] = []

    
    override func viewDidLoad() {
            super.viewDidLoad()

        let bullet1 = "Tummy to Play: Always remember: back to sleep, tummy to play. Baby may not like being on their tummy at first because back and neck muscles are not very strong yet. Make Tummy Time part of baby’s daily routine starting with a few minutes at a time, a few times a day. Helps baby develop core strength."
        let bullet2 = "Face-to-Face: Lie down propped up by a pillow and place baby tummy down on your chest so you’re face-to-face. Hold firmly so baby does not roll off. Helps baby strengthen core muscles and achieve developmental milestones."
        let bullet3 = "Get to Know Baby: Take time to get to know baby in every way. Smile at them. Touch hands, feet and forehead. See how they wiggle and react to touch and voices. Helps you connect with your baby."
        

         
        strings = [bullet1, bullet2, bullet3]
        
        var fullString = ""
         
        for string: String in strings
        {
            let bulletPoint: String = "\u{2022}"
            let formattedString: String = "\(bulletPoint) \(string)\n\n"
 
            fullString = fullString + formattedString
        }

         
        textM.text = fullString
       
        getVideo(videoCode: "UEnzqSK-j_s")
        
        func getVideo(videoCode: String){
            let url = URL (string: "https://www.youtube.com/embed/\(videoCode)")
            myWebView.load(URLRequest(url: url!))
        }

        }

}
