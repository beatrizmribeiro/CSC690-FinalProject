//
//  ChecklistViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/12/21.
//

import UIKit


class ChecklistViewController: UITableViewController{
    
    
    private var checkList = [Checklist]()
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
        self.title = "Checklist"
        
    }
    
    private var checklist = Checklist.getMockData()
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return checklist.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellChecklist", for: indexPath)

        if indexPath.row < checklist.count
        {
            let item = checklist[indexPath.row]
            cell.textLabel?.text = item.title

            let accessory: UITableViewCell.AccessoryType = item.done ? .checkmark : .none
            cell.accessoryType = accessory
        }

        return cell

    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)

        if indexPath.row < checklist.count
        {
            let item = checklist[indexPath.row]
            item.done = !item.done

            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
    
}

