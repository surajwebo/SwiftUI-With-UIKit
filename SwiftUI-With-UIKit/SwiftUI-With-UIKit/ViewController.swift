//
//  ViewController.swift
//  SwiftUI-With-UIKit
//
//  Created by Suraj Mirajkar on 22/03/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    var selectedRowText: String?
    @IBOutlet var rowTitleLabel: UILabel!
    @IBOutlet var pushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIViewController";
        if let selectedRowText = selectedRowText {
            rowTitleLabel.text = selectedRowText
            pushButton.isEnabled = true
        } else {
            pushButton.isEnabled = false
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushSwiftUIScreen() {
        var swiftUIView = SecondSwiftUIView()
        if let selectedRowText = selectedRowText {
            swiftUIView.selectedRowText = selectedRowText
            let vc = UIHostingController(rootView: swiftUIView)
            self.navigationController?.pushViewController(vc, animated: true)
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

}
