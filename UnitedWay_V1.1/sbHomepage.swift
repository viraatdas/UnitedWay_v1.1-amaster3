//
//  sbHompage.swift
//  UnitedWay_V1.1
//
//  Created by Code4Charity on 11/2/17.
//  Copyright © 2017 Code4Charity. All rights reserved.
//

import UIKit

class sbHomepage: UIViewController {

    @IBOutlet weak var homepageWebView: UIWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        let homepageURL = URL(string: "http://www.unitedwaympc.org/")
        let homepageRequest = URLRequest(url: homepageURL!)
        homepageWebView.loadRequest(homepageRequest)
        
    }
    
    func homepageAction(_ sender: Any) {
        performSegue(withIdentifier: "homepageSegue", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
