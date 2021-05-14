//
//  milestonesViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/9/21.
//

import UIKit

class milestonesViewController: UITableViewController {

    var activities: [Activity] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var activity:  Activity
        
        activity = Activity(title: "0-3 Month Milestones", image: UIImage(named: "months03.png")!)
        activities.append( activity )
                
        activity = Activity(title: "4-6 Month Milestones", image: UIImage(named: "months46.png")!)
                activities.append(activity)

        activity = Activity(title: "7-9 Month Milestones", image: UIImage(named: "months79.png")!)
                activities.append(activity)

        activity = Activity(title: "10-12 Month Milestones", image: UIImage(named: "months1012.png")!)
                activities.append(activity)
//
//        activity = Activity(title: "13-18 Month Milestones")
//                activities.append(activity)
//
//        activity = Activity(title: "19-24 Month Milestones")
//                activities.append(activity)
//
//        activity = Activity(title: "2-3 Year Milestones")
//                activities.append(activity)

            }


    override func numberOfSections(in tableView: UITableView) -> Int{
            return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row selected: \(indexPath.row)")

        switch indexPath.row {
        case 0:
           // launch view controller for 0-3 months
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(identifier: "Milestones0to3ViewController")
            show(secondVC, sender: self)
            break
        case 1:
            // launch view controller for 4-6 months
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
             let secondVC = storyboard.instantiateViewController(identifier: "Milestones4to6ViewController")
             show(secondVC, sender: self)
        case 2:
            // launch view controller for 7-9 months
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
             let secondVC = storyboard.instantiateViewController(identifier: "Milestones7to9ViewController")
             show(secondVC, sender: self)
        case 3:
            // launch view controller for 10-12 months
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
             let secondVC = storyboard.instantiateViewController(identifier: "Milestones10to12ViewController")
             show(secondVC, sender: self)
        
            break
        default:
            break
        }
       
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let activity: Activity = activities[ indexPath.row ]
        let cellReusable = "cellReusable"

        let cells = tableView.dequeueReusableCell(withIdentifier: cellReusable , for: indexPath) as! cellMilestone
        cells.milestoneimageView.image = activity.image
        cells.titleLabel.text = activity.title
        
        
        cells.milestoneimageView.layer.cornerRadius = 42
        cells.milestoneimageView.clipsToBounds = true
        cells.isUserInteractionEnabled = true

        
        
//        cells.textLabel?.text = activity.title
//        cells.imageView?.image = activity.image

        return cells

    }

    

}
