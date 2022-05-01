//
//  UIViewControllerExtensions.swift
//  BasicLayoutAppAssignmentv1
//
//  Created by Consultant on 4/29/22.
//

import UIKit

/*
 The first thing you are doing is declaring you are making an extension on the class UIViewController. An extension is simply a way to add more functionality to a class that already exists. In this case, you don't have access to change the base code, so you use an extension to extend the capabilities of the class.
 
 Inside of the extension you are creating a Static class method. Static class methods function the same as methods declared with the class keyword. The main difference here is that Static methods can not be overrode by a subclass. Both types of methods here are associated with the class and not an instance of the class.
 */

extension UIViewController {
    
    /*
     The method created here is called instantiate() because you are using it to create an instance of this class. That is also why the return type is Self, you are creating a new instance of your class and since it subclasses UIViewController, it can be returned by this method. Inside the method, you are returning an instance of the class calling the init method and loading a nib file (.xib) that has the same name as the class calling the method.
     
     That last part may seem a little confusing, so let's clarify. The reason that you created the files for the main view using the Cocoa Touch Class way, is because it names both files the same exact thing. It also makes the class declared inside the file have the same name. Because they all have the same name, you can use String(describing: self) to get the name of the class calling the method as a string, and supply it to the nibName parameter.
     */
    
    static func instantiate() -> Self {
        return self.init(nibName: String(describing: self), bundle: nil)
    }
}
