//
//  LinkViewController.swift
//  WebPage
//
//  Created by Admin on 26/03/22.
//

import UIKit

class LinkViewController: UIViewController {

    @IBOutlet weak var linkBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemTeal
        barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
        navigationItem.title = "Web Page"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func linkBtnPressed(_ sender: Any) {
        guard let myWebURL = URL(string: "https://github.com") else { return }
        UIApplication.shared.open(myWebURL)
    }
    
}
