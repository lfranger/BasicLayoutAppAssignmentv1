//
//  HabitDetailedViewController.swift
//  BasicLayoutAppAssignmentv1
//
//  Created by Consultant on 5/2/22.
//

import UIKit

class HabitDetailedViewController: UIViewController {
    
    var habit: Habit!
    var habitIndex: Int!
    
    private var persistence = PersistenceLayer()
    
    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var labelCurrentStreak: UILabel!
    @IBOutlet weak var labelTotalCompletions: UILabel!
    @IBOutlet weak var labelBestStreak: UILabel!
    @IBOutlet weak var labelStartingDate: UILabel!
    @IBOutlet weak var buttonAction: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressActionButton(_ sender: Any) {
        habit = persistence.markHabitAsCompleted(habitIndex)
        updateUI()
    }
    
    private func updateUI() {
        title = habit.title
        imageViewIcon.image = habit.selectedImage.image
        labelCurrentStreak.text = "\(habit.currentStreak) days"
        labelTotalCompletions.text = "Total: \(String(habit.numberOfCompletions))"
        labelBestStreak.text = "Best Streak: \(String(habit.bestStreak))"
        labelStartingDate.text = "Starting Date: \(habit.dateCreated.stringValue)"
        
        if habit.completedToday {
            buttonAction.setTitle("Completed for Today!", for: .normal)
        } else {
            buttonAction.setTitle("Mark as Completed", for: .normal)
        }
        
    }

}
