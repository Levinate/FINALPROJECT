//
//  VideoViewController.swift
//  workoutplus
//
//  Created by Dauren on 2020-12-05.
//  Copyright © 2020 Dauren. All rights reserved.
//

import UIKit
import WebKit

class VideoViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var exerciseName: String?
    
    var videoURL: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Video Tutorials"
        webView.navigationDelegate = self
        let urlString = "https://www.youtube.com/results?search_query=" + getSearchKeywords(exerciseName: exerciseName ?? "")
        videoURL = URL(string: urlString)
        if let url = videoURL {
            let request = URLRequest(url: url)
            self.webView.load(request)
            self.activityIndicator.startAnimating()
        }

    }
    
    func getSearchKeywords(exerciseName: String) -> String {
        
        let keywordList = exerciseName.split(separator: " ")
        return keywordList.joined(separator: "+")
        
    }
    
}
