//
//  RecipesTableViewController.swift
//  Swift-TableView-Example
//
//  Created by Bilal Arslan on 28/02/16.
//  Copyright © 2016 Bilal ARSLAN. All rights reserved.
//

import UIKit

struct Recipe2 {
    let name2: String
    let thumbnails2: String
    let prepTime2: String
}

//Global Variable
var lines2:[String] = [String]()//This is where the contents are stored.
var pics2:[String] = [String]()

class sbPartners: UITableViewController {
    
    var recipes = [Recipe2]()//This is an array so index has to be used to
    //assign objects to it.
    let identifier2: String = "tableCell"
    /* let bundle = Bundle.main
     let path = bundle.pathForResource("temp", ofType: "txt")
     let content = NSString.stringWithContentsOfFile(path) as String*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        navigationItem.title = ""
        initializeTheRecipes()
        //Getting the file content from the file.
        //The file should be in your Xcode project.
        let csvURL2 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Partners", ofType: ".txt")!)
        //Converting the file content from NSURL to NSString
        let contents2 = try! NSString(contentsOf: csvURL2 as URL, encoding: String.Encoding.utf8.rawValue)
        //Separating "contents" line by line and creating an array of the contents.
        //The contents can be accessed by "lines[index]".
        lines2 = contents2.components(separatedBy: "\n") //THIS WAS THE PROBLEM
        
        let csvURL3 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "partner_images", ofType: ".txt")!)
        //Converting the file content from NSURL to NSString
        let contents3 = try! NSString(contentsOf: csvURL3 as URL, encoding: String.Encoding.utf8.rawValue)
        //Separating "contents" line by line and creating an array of the contents.
        //The contents can be accessed by "lines[index]".
        pics2 = contents3.components(separatedBy: "\n")
        
        //Calling the initlaizeTheRecipes function
        initializeTheRecipes()
    }
    
    //This is the function so you have to call it from the "viewDidLoad()",
    //which is like the main function.
    func initializeTheRecipes() {
        //Index Incrementer for the "recipes" array. This allows you to assign
        //objects to the recipies array.
        
        //
        //        var emails = [String](repeating: "", count: 107)
        //        var names = [String](repeating: "", count: 107)
        //        for (j, i) in stride(from: 0, to: lines.count-1, by: 2).enumerated(){
        //
        //            emails[j] = lines[i+1]
        //            names[j] = lines[i]
        //        }
        //
        //
        //        var i=0;
        //        while (i < 107) {
        //
        ////            a = names[i]
        ////            b = emails[i]
        //            //Use append instead of adding by index to the array.
        //            //recipes[i] = Recipe(name: element, thumbnails: "egg_benedict.jpg", prepTime: "1 hour")
        //            recipes.append(Recipe(name: names[i], thumbnails: "egg_benedict.jpg", prepTime: emails[i]))
        //            print(names[i])
        //            //print(emails[i])
        //            i+=1
        //        }
        
        //New Method
        var p = 0;
        while (p < lines2.count) {
            let name_2:String = lines2[p]
            let pics_2 = pics2[p]
            //let email_1:String = lines[i + 1]
            
            
            recipes.append(Recipe2(name2: name_2, thumbnails2: pics_2, prepTime2: " "))
            p += 1
        }
        
        
        
        
    }
    
    // MARK: UITableView DataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2: TableCell2! = tableView.dequeueReusableCell(withIdentifier: identifier2) as? TableCell2
        cell2.configurateTheCell(recipes[indexPath.row])
        
        return cell2!
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        if tableView.isEditing {
            return .delete
        }
        
        return .none
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return recipes.count
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            recipes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
            
        }
        
    }
    
    
    // MARK: Segue Method
    /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "recipeDetail" {
     let indexPath = self.tableView!.indexPathForSelectedRow
     let destinationViewController: DetailViewController = segue.destination as! DetailViewController
     destinationViewController.recipe = recipes[indexPath!.row]
     }
     }*/
}
