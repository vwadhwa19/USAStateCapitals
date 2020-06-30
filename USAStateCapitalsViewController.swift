//
//  ViewController.swift
//  USA State Capitals
//
//  Created by Varun on 5/17/20.
//  Copyright © 2020 Varun. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    // View controller lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateState()
    }
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var stateView: UILabel!
    @IBOutlet weak var capitalView: UILabel!
    
    // Variables
    var currentStateIndex = 0
    var currentCapitalIndex = 0
    
    // Array of the fifty states in the U.S.A
    let stateList = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    // Array of the capitals of the fifty states in the U.S.A.
    let capitalList = ["Montgomery", "Juneau", "Phoenix", "Little Rock", "Sacramento", "Denver", "Hartford", "Dover", "Tallahassee", "Atlanta", "Honolulu", "Boise", "Springfield", "Indianapolis", "Des Moines", "Topeka", "Frankfort", "Baton Rouge", "Augusta", "Annapolis", "Boston", "Lansing", "Saint Paul", "Jackson", "Jefferson City", "Helena", "Lincoln", "Carson City", "Concord", "Trenton", "Santa Fe", "Albany", "Raleigh", "Bismarck", " Columbus", "Oklahoma City", "Salem", "Harrisburg", "Providence", "Columbia", "Pierre", "Nashville", "Austin", "Salt Lake City", "Montpelier", "Richmond", "Olympia", "Charleston", "Madison", "Cheyenne"]
    
    // Update the state function
    func updateState()
    {
        stateView.text = stateList[currentStateIndex]
        let stateName = stateList[currentStateIndex]
        let image = UIImage(named: stateName)
        imageView.image = image
        capitalView.text = "Capital?"
    }
    
    // Show capital button
    @IBAction func showCapital(_ sender: Any)
    {
        capitalView.text = capitalList[currentCapitalIndex]
    }
    
    // Next state button
    @IBAction func nextState(_ sender: Any)
    {
        currentStateIndex += 1
        currentCapitalIndex += 1
        
        if currentStateIndex >= stateList.count && currentCapitalIndex >= capitalList.count
        {
            currentStateIndex = 0
            currentCapitalIndex = 0
        }
        
        updateState()
    }
    
    // Previous state button
    @IBAction func previousState(_ sender: Any)
    {
        currentStateIndex -= 1
        currentCapitalIndex -= 1
        let stateOutOfBounds = -1
        
        if currentStateIndex == stateOutOfBounds && currentCapitalIndex == stateOutOfBounds
        {
            currentStateIndex = stateList.count - 1
            currentCapitalIndex = capitalList.count - 1
        }
        
        updateState()
    }
}
