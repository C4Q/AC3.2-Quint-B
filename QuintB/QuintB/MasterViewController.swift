//
//  MasterViewController.swift
//  QuintB
//
//  Created by Marty Avedon on 12/1/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit
import TwicketSegmentedControl

class MasterViewController: UIViewController {

    @IBOutlet weak var switcher: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        switcher.removeAllSegments()
        switcher.insertSegment(withTitle: "Deaths", at: 0, animated: false)
        switcher.insertSegment(withTitle: "Images", at: 1, animated: false)
        switcher.insertSegment(withTitle: "Results", at: 2, animated: false)
        //switcher.addTarget(self, action: touched, for: .valueChanged)
        
        //addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        // Select First Segment
        switcher.selectedSegmentIndex = 2
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
