//
//  HomeViewController.swift
//  
//
//  Created by Rameez Remsudeen  on 4/15/15.
//
//

import UIKit
import AVFoundation


@objc

class HomeViewController: UIViewController {

    @IBOutlet var wwdcAnimationLabel: UILabel!
    
    weak var blueTapGestureRecognizer: UIGestureRecognizer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        
        
//        wwdcAnimationLabel.alpha = 1.0;
        
        let glow:GlowLayer = GlowLayer(pulseColor: UIColor.blackColor())
        glow.radius = 90.0
        glow.animationDuration = 1
        glow.pulseInterval = 0
        
        let glowView = UIView(frame:CGRectMake(65, 65, 50, 50) )
        
        glow.position = CGPointMake(CGRectGetWidth(glowView.frame)/2, CGRectGetHeight(glowView.frame)/2)
        glowView.layer.addSublayer(glow)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
    
    return UIStatusBarStyle.LightContent
    }
    
    @IBAction func transitionToNextController(sender:UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc:mainBackgroundController = storyboard.instantiateViewControllerWithIdentifier("mainBackgroundVC") as! mainBackgroundController
        
        presentViewController(vc, animated: true) { () -> Void in
            
        }
        
    }
    
}
