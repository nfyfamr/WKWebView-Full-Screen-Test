//
//  ViewController.swift
//  WKWebView-Full-Screen-Test
//
//  Created by WRL on 2021/01/15.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Load AFrame page
        // Note that the AFrame automatically injects viewport meta tag.
//        let url = URL(string: "https://aframe.io/aframe/examples/boilerplate/hello-world/")!
//        let request = URLRequest(url: url)
//        webView.load(request)
        
        // Load an html code that contains viewport meta tag.
        let htmlString = "<html><head><meta name='viewport' content='width=device-width,user-scalable=no,initial-scale=1,viewport-fit=cover'><style>html,body{margin: 0; padding: 0; width:100%; height: 100%}</style></head><body><div style='background-color:#f00; width:100%; height:100%'></div></body></html>"
        webView.loadHTMLString(htmlString, baseURL: nil)
        
    }


}

