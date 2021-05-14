//
//  BabyActivityViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/10/21.
//

import UIKit

class BabyActivityViewController: UITableViewController {

    var babyActivities: [BabyActivity] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var babyActivity:  BabyActivity
        
        babyActivity = BabyActivity(title: "0-3 Month Games", image: UIImage(named: "baby1.png")!)
        babyActivities.append( babyActivity )
                
        babyActivity = BabyActivity(title: "4-6 Month Games", image: UIImage(named: "baby2.png")!)
        babyActivities.append(babyActivity)

        babyActivity = BabyActivity(title: "7-9 Month Games", image: UIImage(named: "baby3.png")!)
        babyActivities.append(babyActivity)

        babyActivity = BabyActivity(title: "10-12 Month Games", image: UIImage(named: "baby4.png")!)
        babyActivities.append(babyActivity)


            }


    override func numberOfSections(in tableView: UITableView) -> Int{
            return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return babyActivities.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Baby activity row selected: \(indexPath.row)")

        switch indexPath.row {
        case 0:
           // launch view controller for 0-3 months
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(identifier: "BabyActivity0to3ViewController")
            show(secondVC, sender: self)
            break
        case 1:
            // launch view controller for 4-6 months
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
             let secondVC = storyboard.instantiateViewController(identifier: "BabyActivity4to6ViewController")
             show(secondVC, sender: self)
        case 2:
            // launch view controller for 7-9 months
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
             let secondVC = storyboard.instantiateViewController(identifier: "BabyActivity7to9ViewController")
             show(secondVC, sender: self)
        case 3:
            // launch view controller for 10-12 months
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
             let secondVC = storyboard.instantiateViewController(identifier: "BabyActivity10to12ViewController")
             show(secondVC, sender: self)
        
            break
        default:
            break
        }
       
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let babyActivity: BabyActivity = babyActivities[ indexPath.row ]
        let cellReusable = "cellReusable"

        let cells1 = tableView.dequeueReusableCell(withIdentifier: cellReusable , for: indexPath) as! cellBabyActivity
        cells1.babyimageView.image = babyActivity.image
        cells1.titleLabel.text = babyActivity.title
        
//
//        cells1.babyimageView.layer.cornerRadius = 62
//        cells1.babyimageView.clipsToBounds = true
//        cells1.isUserInteractionEnabled = true

        
        
//        cells.textLabel?.text = activity.title
//        cells.imageView?.image = activity.image

        return cells1

    }

    

}

