//
//  DisplayViewController.swift
//  CoreDataDemo
//
//  Created by Akash Technolabs on 21/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController,UITableViewDelegate, UITableViewDataSource
{
    var arrayStudent = [StudentData]()

    @IBOutlet weak var studentTableView: UITableView!
    
    
    
    @IBAction func btnBackAction(_ sender: UIButton) {
        let destination =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        self.present(destination, animated: true, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.getData()
        studentTableView.reloadData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayStudent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")as! TableViewCell
        
        cell.lblName.text = arrayStudent[indexPath.row].s_name
        cell.lblAge.text = arrayStudent[indexPath.row].s_age
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 70
    }
    
    func getData()
    {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do
        {
            arrayStudent = try context.fetch(StudentData.fetchRequest())
            
        }
        catch
        {
            print("Error Message :\(error)")
        }
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
