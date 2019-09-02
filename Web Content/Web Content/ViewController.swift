//
//  ViewController.swift
//  Web Content
//
//  Created by Eric Ross on 9/1/19.
//  Copyright © 2019 kb7td. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webview: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webview = WKWebView(frame: .zero, configuration: webConfiguration)
        webview.uiDelegate = self
        view = webview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.stackoverflow.com")!
        let myRequest = URLRequest(url: url)
        webview.load(myRequest)
    }


}

