//
//  HomePageViewController.swift
//  Ind03_jaffri_faisal
//
//  Created by Faisal Jaffri on 3/21/22.
//

import UIKit
//Home Page View Controller that contains a table view controller to display all states
class HomePageViewController: UITableViewController {
    var stateDataCollection = [State]() // Array that holds all the State objects together
    @IBOutlet var tblStateDetails: UITableView! // Outlet for the tableView that holds all state names and nicknames
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Sorting the state names
        stateInfo.sort(by: <)
        // Loop through all the 50 states, create an object of a State and append them in the array
        // Get the stateflag image and statemap image form StateFlags folder
        // Images saved in such a way that no need to hard code all 50 state flags and state maps name
        for i in 0..<stateInfo.count{
            let state: (state: String, nickName : String, area: String) = stateInfo[i]
            stateDataCollection.append(State(stateName: state.state, stateNickname: state.nickName, stateFlag: UIImage(named: "StateFlags/\(state.state)")!, stateMap: UIImage(named: "StateFlags/\(state.state)_Map")!, area: state.area))
        }
    }
    // MARK: - Table view data source
        override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stateInfo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellData", for: indexPath)
        
        // Configure the cell...
        // Get the first element of the stateInfo array, fetch the state name and nickname,
        // Present it in the cell
        let cellDetails: (state: String, nickName : String, area : String) = stateInfo[indexPath[1]]
        cell.textLabel?.text = cellDetails.state
        cell.detailTextLabel?.text = cellDetails.nickName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Move to the destination View Controller at every click on the row item
        performSegue(withIdentifier: "showDetail", sender: self)
        
    }
    
    // Send data to the Details Page View controller to show State map, area, name, flag on the screen
    // Get the stateObject from destination ViewController and pass complete State Object stored in the stateDataCollection Array
    // Each row clicked will have the related details such as state name, nickname, map, flag and area

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailsPageViewController
        destinationVC.stateObject = stateDataCollection[(tblStateDetails.indexPathForSelectedRow?.row)!]
    }
    
    
}
