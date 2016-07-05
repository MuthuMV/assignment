//
//  ViewController.swift
//  LoginPage
//
//  Created by Muthu Venkatesh on 7/4/16.
//  Copyright © 2016 Muthu Venkatesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!

    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginCustomActivity: UIButton!
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    @IBOutlet weak var activityImage: UIImageView!
    
    //Native acitivty indicator at the center of the button after fading in
    @IBAction func loginClicked(sender: AnyObject) {
        UIView.animateWithDuration(0.75, delay: 0.0, options: .CurveEaseIn, animations: {
            self.loginButton.alpha = 0.0
            }) { (true) in
                //Completion handler
                self.activity.startAnimating()
        }
    }
    
    //Custom activity indicator with only 4 images, more the images smoother the animation we get
    @IBAction func loginCustomActivityIndicator(sender: AnyObject) {
        UIView.animateWithDuration(1.0, delay: 0.0, options: .CurveEaseIn, animations: {
            
            //Based on the background colour requirements, the alpha value can be chaged
            self.loginCustomActivity.alpha = 0.0
            }) { (true) in
                self.activityImage.startAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activity.hidesWhenStopped = true
        activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        activityImage.animationImages = [
            UIImage(named: "load1.png")!,
            UIImage(named: "load2.png")!,
            UIImage(named: "load3.png")!,
            UIImage(named: "load4.png")!]
        activityImage.animationDuration = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

