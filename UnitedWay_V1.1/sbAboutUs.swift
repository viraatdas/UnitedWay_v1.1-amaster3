//
//  sbAboutUs.swift
//  UnitedWay_V1.1
//
//  Created by Code4Charity on 11/2/17.
//  Copyright © 2017 Code4Charity. All rights reserved.
//

import UIKit

class sbAboutUs: UIViewController {

    @IBOutlet weak var aboutUsWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let aboutUsURL = URL(string: "http://www.unitedwaympc.org/about-us")
        let aboutUsRequest = URLRequest(url: aboutUsURL!)
        aboutUsWebView.loadRequest(aboutUsRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
