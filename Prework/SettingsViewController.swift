//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jiyoung yoon on 1/24/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var darkSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func darkSwitchControl(_ sender: Any) {
        if darkSwitch.isOn == true {
            view.backgroundColor = UIColor.black
            
        } else {
            view.backgroundColor = UIColor.white
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
