//
//  ViewController.swift
//  CoreDataPratice1
//
//  Created by MacBook on 2/1/17.
//  Copyright © 2017 MacBook. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    //MARK: Properties
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var status: UILabel!
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    
    //MARK: Action
    
    @IBAction func saveButton(sender: UIButton) {
        let entityDescription = NSEntityDescription.entityForName("Contacts", inManagedObjectContext: managedObjectContext)
        let contact = Contacts(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext)
        contact.name = name.text!
        contact.address = address.text!
        contact.phone = phone.text!
        
        do
        {
            try managedObjectContext.save()
            print("saved successfully")
        }
        catch let error as NSError{
            status.text = error.localizedFailureReason
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

