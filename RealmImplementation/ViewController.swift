//
//  ViewController.swift
//  RealmImplementation
//
//  Created by Magic on 22/03/16.
//  Copyright © 2016 The Tech Bee Contributor. All rights reserved.
//


// Define your models like regular Swift classes
class Dog: Object {
    dynamic var name = ""
    dynamic var age = "0"
    dynamic var health = ""
}


import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(" view did appear ")
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let myDog = Dog()
        myDog.name = "Rex"
        myDog.age = "3"
        myDog.health = "Good"
        
        let realm = try! Realm()
        
        // Persist your data easily
        try! realm.write {
            realm.add(myDog)
        }
        
        
        print(Realm.Configuration.defaultConfiguration.path!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

