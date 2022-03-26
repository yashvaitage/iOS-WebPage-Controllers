//
//  WebSegueViewController.swift
//  WebPage
//
//  Created by Admin on 26/03/22.
//

import UIKit
import WebKit

class WebSegueViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfig = WKWebViewConfiguration()
        webView = WKWebView(frame: CGRect(x: 20, y: 20, width: 400, height: 400), configuration: webConfig)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string: "https://github.com/yashvaitage")!
        
        let myURLRequest = URLRequest(url: myURL)
        webView.load(myURLRequest)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
