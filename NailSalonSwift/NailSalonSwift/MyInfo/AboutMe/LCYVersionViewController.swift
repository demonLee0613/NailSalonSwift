


//
//  LCYVersionViewController.swift
//  KickYourAss
//
//  Created by sun on 15/4/21.
//  Copyright (c) 2015年 多思科技. All rights reserved.
//

import UIKit

class LCYVersionViewController: UIViewController {

    @IBOutlet private weak var versionLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        iconView.layer.cornerRadius = 30
        // Do any additional setup after loading the view.
        if let version = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as? String {
            versionLabel.text = "版本号：1.2.0"
        } else {
            versionLabel.text = nil
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backAction(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
