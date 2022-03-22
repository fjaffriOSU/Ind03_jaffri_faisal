//
//  DetailsPageViewController.swift
//  Ind03_jaffri_faisal
//
//  Created by Faisal Jaffri on 3/21/22.
//

import UIKit

// Details Page View Controller that pops up when an item is clicked on the home page
class DetailsPageViewController: UIViewController {

    @IBOutlet weak var stateFlag: UIImageView!
    
    @IBOutlet weak var stateName: UILabel!
    
    @IBOutlet weak var stateMap: UIImageView!
    
    @IBOutlet weak var stateArea: UILabel!
    
    //An object of State class used to display state details
    var stateObject: State?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Overriding the valuse of the Outlets with the one passed from HomePageViewController
        stateName.text = stateObject?.stateName
        stateArea.text = stateObject!.area+" Sq.Miles"
        stateFlag.image = stateObject?.stateFlag
        stateMap.image = stateObject?.stateMap
        
        
    }


}

