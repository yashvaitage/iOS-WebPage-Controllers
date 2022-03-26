//
//  WKWebViewController.swift
//  WebPage
//
//  Created by Admin on 26/03/22.
//

import UIKit

class WKWebViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemTeal
        barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
        navigationItem.title = "WKWeb View"
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "ToWebView")
        {
            
        }
    }
    
    @IBAction func WKWebBtnPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ToWebView", sender: nil)
    }
    
}
