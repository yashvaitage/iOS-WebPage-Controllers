//
//  SafariViewController.swift
//  WebPage
//
//  Created by Admin on 26/03/22.
//

import UIKit
import SafariServices

class SafariViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemTeal
        barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
        navigationItem.title = "Safari View"
    }
    
    func OpenSafariViewController(){
        if let myURL = URL(string: "https://github.com/yashvaitage")
        {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            
            let safariVC = SFSafariViewController(url: myURL, configuration: config)
            
            present(safariVC, animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func SafariBtnPressed(_ sender: Any) {
        self.OpenSafariViewController()
    }
    
}
