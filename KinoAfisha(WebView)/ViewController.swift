//
//  ViewController.swift
//  KinoAfisha(WebView)
//
//  Created by tami on 11/20/20.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = URL(string: "https://www.kinoafisha.info/")
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true
    }


}

