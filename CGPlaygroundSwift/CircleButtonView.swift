//
//  CircleButtonView.swift
//  CGPlaygroundSwift
//
//  Created by Curtis Couture on 3/10/15.
//  Copyright (c) 2015 BadBeanie. All rights reserved.
//

import UIKit

class CircleButtonView: UIView {

    override func drawRect(rect: CGRect) {
        var path = UIBezierPath(ovalInRect: rect)
        UIColor.blackColor().setFill()
        path.fill()
        
        let newSize = CGSizeApplyAffineTransform(rect.size, CGAffineTransformMakeScale(0.95, 0.95))
        
        var newPath = UIBezierPath(ovalInRect: CGRectMake(rect.origin.x/0.95+3, rect.origin.y/0.95 + 3, newSize.width, newSize.height))
        UIColor.greenColor().setFill()
        newPath.fill()
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor();
        
    }
    convenience override init () {
        self.init(frame: CGRectZero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
}
