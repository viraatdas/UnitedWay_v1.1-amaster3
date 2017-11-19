// ListTimelineViewController.swift
import UIKit
import TwitterKit

class ListTimelineViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        self.dataSource = TWTRUserTimelineDataSource(screenName: "unitedwaympc", apiClient: TWTRAPIClient())
        
        
}
}
