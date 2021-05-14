//
//  ViewController.swift
//  babyGameCalendar
//
//  Created by Beatriz Ribeiro on 5/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImage: UILabel!
    @IBOutlet weak var bgImage1: UIImageView!
    @IBOutlet weak var subtitle: UILabel!
  
    
    @IBAction func goButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "secondView", sender: self)
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)

        UIView.animate(withDuration: 2.0,
                                   delay: 0,
                                   usingSpringWithDamping: CGFloat(0.20),
                                   initialSpringVelocity: CGFloat(6.0),
                                   options: UIView.AnimationOptions.allowUserInteraction,
                                   animations: {
                                    sender.transform = CGAffineTransform.identity
            },
                                   completion: { Void in()  }
        )
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bgImage.alpha = 0
        bgImage1.alpha = 0
        subtitle.alpha = 0
//        goButton.alpha = 0
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.bgImage1.alpha = 0.6
        }) {(true) in
            self.showTitle()
        }
    }
    
    func showTitle() {
            UIView.animate(withDuration: 1, animations: {
                self.bgImage.alpha = 1
            }, completion: { (true) in
                self.showDesc()
            })
        }
    
    func showDesc() {
        UIView.animate(withDuration: 1, animations: {
            self.subtitle.alpha = 1
        }) { (true) in
            self.showButton()
        }
    }
    
    func showButton() {
        UIView.animate(withDuration: 1, animations: {
//            self.goButton.alpha = 1
        })
    }
    
    


}

