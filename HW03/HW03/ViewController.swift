//
//  ViewController.swift
//  HW03
//
//  Created by selin eylül bilen on 3/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bounceAnimation: bounce!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.bounceAnimation.backgroundColor =  UIColor(patternImage: UIImage(named: "court")!)
        
        let display = CADisplayLink(target: self, selector: #selector(update))
        display.add(to: RunLoop.main, forMode: RunLoop.Mode.default)
    }
    @objc func update(){
        print("updated")
        bounceAnimation.update()
    }
}

