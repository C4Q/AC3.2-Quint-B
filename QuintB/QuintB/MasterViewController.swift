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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Styling for Twicket -- properties to know
         
         defaultTextColor: UIColor - Text color for unselected segments
         segmentsBackgroundColor: UIColor - Background color for unselected segments
         highlightTextColor: UIColor - Text color for selected segment
         sliderTextColor: UIColor - Background color for selected segment
         font: UIFont - Set font
         */

        let titles = ["Deaths", "Images", "Results"]
        let frame = CGRect(x: 5, y: view.frame.height / 10, width: view.frame.width - 10, height: 40)
        let segmentedControl = TwicketSegmentedControl(frame: frame)
        segmentedControl.setSegmentItems(titles)
        // font
        segmentedControl.font = UIFont(name: "Georgia-Bold", size: 20)!
        // colors for unselected segments
        segmentedControl.defaultTextColor = .black
        segmentedControl.segmentsBackgroundColor = .white
        // colors for selected segments
        segmentedControl.highlightTextColor = .white
        segmentedControl.sliderBackgroundColor = .black
        
        segmentedControl.delegate = self
            

        
        view.addSubview(segmentedControl)
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

extension MasterViewController: TwicketSegmentedControlDelegate {
    func didSelect(_ segmentIndex: Int) {
        print("Selected idex: \(segmentIndex)")
    }
}
