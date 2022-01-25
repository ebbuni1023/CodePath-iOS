//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jiyoung yoon on 1/24/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var darkSwitch: UISwitch!
    @IBOutlet weak var tip1Label: UITextField!
    @IBOutlet weak var tip2Label: UITextField!
    @IBOutlet weak var tip3Label: UITextField!
    
//    var tip = ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tip1Label.text = "15%"
        tip2Label.text = "18%"
        tip3Label.text = "20%"
        // Do any additional setup after loading the view.
    }
    
    
    func updateUI()  {
        print()
    }
    @IBAction func darkSwitchControl(_ sender: Any) {
        if darkSwitch.isOn == true {
            
            view.overrideUserInterfaceStyle = .dark
            view.backgroundColor = UIColor.darkGray
            
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
