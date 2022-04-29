# BasicLayoutAppAssignment

Utilize everything that you have learned so far in the training. Make a basic application that has both a main screen and a detail screen. The main screen should show a list of cells on either a table view or a collection view. There should be a series of UI on each cell where from a custom cell created either from an XIB but is in some way uniquely different for each cell. Upon selecting a cell, this will then navigate the user to the detail screen either by modal presentation or from a navigation controller. The detail screen needs to show all the elements of the cell but present in a more appropriate fashion for a full screen.


## Requirements

### Main Screen
    -TableView or CollectionView (Trainee's choice)
    -Custom cells, either with an XIB (Trainee's choice)
    -Data in each cell must contain at least 4 different kinds of UIElements, but can do more. And will also be structured in any order they so choose, as long as the constraints work (Trainee's choice)
    -There must be no less then 30 cells (or more) and each cell must contain some unique identifier that indicates it from the rest. (Can be as simple as the indexPath)
    
### Detail Screen
    -Must visually show all the UI from the cell presented in a more logical presentation for full screen
    -Constraints must work
    -Data for the UI must be sent over from the the main screen in some fashion (Trainee's choice) and cannot be hard coded in the detail screen.
    
### Navigation
    -Upon selecting a cell from the main screen, it must navigate over to the detail screen. Either though a modal presentation, a push from a navigation controller, via storyboard instantiation or through segues. (Trainee's choice)
    -There must be a way to navigate back from the detail screen to the main screen. This can be done either from unwind segues, the navigation conntroller, or through the use of a delegate. (Trainee's choice)
    -If you are to choose modal presentation, you can not use the iOS 13 default of pageSheet style. It must be overContext, fullScreen, etc.
    
### Extra
    -Give screen titles to both the main screen and detail screen
    -Beautify the screens and various UI elements to however you see fit. Show that you know how to adjust some basic UI appearances

