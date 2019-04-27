//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Akash Technolabs on 21/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    
    var arrayStudent = [StudentData]()
    
    
   
    @IBAction func btnDisplayAction(_ sender: UIButton)
    {
        let destination =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DisplayViewController")
        self.present(destination, animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnSaveAction(_ sender: UIButton)
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let table = StudentData(context: context)
        
        table.s_name = txtName.text
        table.s_age = txtAge.text
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        print("Data Saved successfully.")
        
        txtName.text = ""
        txtAge.text = ""
        
        
    }
    
    
    
    
}

