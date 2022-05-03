//
//  ConfirmHabitViewController.swift
//  BasicLayoutAppAssignmentv1
//
//  Created by Consultant on 5/2/22.
//

import UIKit

class ConfirmHabitViewController: UIViewController {
    
    enum ValidationError: Error {
        case empty
    }
    
    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitNameInputField: UITextField!
    
    var habitImage: Habit.Images!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateUI()
    }
    
    private func updateUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }
        
    @IBAction func createHabitButtonPressed(_ sender: Any) {
        
        var persistenceLayer = PersistenceLayer()

        guard let habitText = habitNameInputField.text, !habitText.isEmpty else {
                print("Empty")
            // create the alert
            let alert = UIAlertController(title: "Warning", message: "Enter a habit name.", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
                return
            }

        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }

}
