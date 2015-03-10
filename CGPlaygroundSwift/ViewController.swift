//
//  ViewController.swift
//  CGPlaygroundSwift
//
//  Created by Curtis Couture on 3/10/15.
//  Copyright (c) 2015 BadBeanie. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    var circleView : CircleButtonView?
    var snapAnimation : UISnapBehavior?
    var animator : UIDynamicAnimator?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        circleView = CircleButtonView(frame: CGRectMake(20, 40, 100, 100));
        animator  = UIDynamicAnimator(referenceView: self.view)
        var tapGesture = UITapGestureRecognizer(target: self, action: "HandleTap:");
        self.view.addGestureRecognizer(tapGesture)
        self.view.addSubview(circleView!);
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func HandleTap(tapGest: UITapGestureRecognizer) {
        let snappoint = tapGest.locationInView(self.view)
        
        // Remove the previous behavior.
        if (snapAnimation != nil) {
            self.animator!.removeBehavior(self.snapAnimation!)
        }
        var snap = UISnapBehavior(item: self.circleView!, snapToPoint:snappoint )
        animator!.addBehavior(snap)
        snapAnimation = snap
        NSLog("something")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

