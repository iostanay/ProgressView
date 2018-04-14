//
//  TBProgressView.swift
//  ProgressView
//
//  Created by Tanay Bhattacharjee on 14/04/18.
//  Copyright © 2018 Tanay Bhattacharjee. All rights reserved.

import UIKit

class TBProgressView :UIView {
    
    private var circleArray = [UIView(),UIView(),UIView(),UIView(),UIView(),UIView(),UIView(),UIView()]
    private var bleImageView:UIImageView = UIImageView()
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        let bleColor = color(r: 0, g: 0, b: 0, a: 1.0)
        let scale = CGFloat(circleArray.count + 1)
        let duration = TimeInterval(circleArray.count)
        var delay = 0.0
        for circle in circleArray {
            set(view: circle)
            circle.backgroundColor = bleColor
            self.addSubview(circle)
        
            UIView.animate(withDuration: duration, delay: delay, options: .repeat, animations: { () -> Void in
                circle.transform = CGAffineTransform.init(scaleX: scale, y: scale)
                circle.alpha = 0.0
            }, completion: nil)
            delay += 1.0
        }
        bleImageView.image = UIImage(named: "IMAGE")
        
        bleImageView.frame = CGRect(x:0,y:0,width:100,height:100)
        bleImageView.clipsToBounds=true
        bleImageView.layer.cornerRadius=bleImageView.frame.size.height/2
        bleImageView.center = self.center
        self.addSubview(bleImageView)
        
    }
    
    private func set(view:UIView) {
        view.frame = CGRect(x:0,y:0,width:80,height:80)
        view.center = self.center
        view.layer.cornerRadius = 40
    }
 
    private func color(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat) -> UIColor {
        return UIColor(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: CGFloat(a))
    }
}
