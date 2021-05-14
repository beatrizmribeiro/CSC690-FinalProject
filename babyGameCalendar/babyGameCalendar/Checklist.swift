//
//  Checklist.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/12/21.
//

import Foundation

class Checklist {
    
    var title: String
    var done: Bool
    
    
    public init(title: String) {
        self.title = title
        self.done = false
    }
}


extension Checklist {
    
    public class func getMockData() -> [Checklist] {
        
        return [
            Checklist(title:"While lying on tummy, pushes up on arms"),
            Checklist(title:"While lying on tummy, lifts and holds head up"),
            Checklist(title:"Able to move fists from close to open"),
            Checklist(title:"Able to bring hands to mouth"),
            Checklist(title:"Moves legs and arms off of surface when excited"),
            Checklist(title:"While lying on back, visually tracks a moving toy from side to side"),
            Checklist(title:"While lying on back, attempts to reach for a toy"),
            Checklist(title:"Enjoys a variety of movements"),
            Checklist(title:"Makes eye contact"),
            Checklist(title:"turns head towards sound voice"),
            Checklist(title:"Shows interact in faces"),
            Checklist(title:"is able to open and shut hands"),
            Checklist(title:"Notices and responds to sounds"),
            Checklist(title:"Enjoy bath time"),
            Checklist(title:"Is able to calm during car rides when tired")
            
            
        
        ]
    }
}
