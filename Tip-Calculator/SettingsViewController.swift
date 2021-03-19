//
//  SettingsViewController.swift
//  Tip-Calculator
//
//  Created by Winnie Yang on 3/18/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSettings: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func settingDefaultTip(_ sender: Any) {
        let index = defaultTipSettings.selectedSegmentIndex
        let defaults = UserDefaults.standard
        
        defaults.set(index, forKey: "defaultTip")
        
        defaults.synchronize()
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
