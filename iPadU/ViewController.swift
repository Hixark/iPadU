//
//  ViewController.swift
//  iPadU
//
//  Created by SOIS on 5/10/20.
//  Copyright © 2020 Khari Golson. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
        var webView:WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView = WKWebView()
        view.addSubview(webView)
        let url:URL = URL(string: "https://www.output.com")!
        let req:URLRequest = URLRequest(url: url)
        webView.load(req)
        webView.translatesAutoresizingMaskIntoConstraints = false
        let width = NSLayoutConstraint(item: webView, attribute: .
            width, relatedBy: .equal, toItem: view,
                   attribute: .width, multiplier: 1.0, constant: 0)
        let height = NSLayoutConstraint(item: webView, attribute: .
            height, relatedBy: .equal, toItem: view, attribute: .
            height, multiplier: 1.0, constant: -20)
        let top = NSLayoutConstraint(item: webView, attribute: .top,
                                     relatedBy: .equal, toItem: view, attribute: .top,
                                     multiplier: 1.0, constant: 92)
        view.addConstraints([width,height,top])
    }


}

