//
//  ViewController.swift
//  WebView
//
//  Created by lc on 2021/6/20.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.addSubview(webView)
        
        webView.frame = self.view.bounds
                
        let bundlePath = Bundle.main.bundlePath
                
        let path = "file://\(bundlePath)/HTML/index.html"
                
        guard let url = URL(string: path) else {
            return
        }
                
        let request = URLRequest(url: url)
        
        webView.load(request)
    }


}

