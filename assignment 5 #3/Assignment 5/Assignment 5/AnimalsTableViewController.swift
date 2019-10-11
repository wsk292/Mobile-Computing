//
//  AnimalsTableView ControllerTableViewController.swift
//  Assignment 5
//
//  Created by Nadia Khan on 10/10/19.
//  Copyright © 2019 cs329e. All rights reserved.
//

import UIKit


class AnimalsTableViewController: UITableViewController {

    
    //MARK: Properties
    
    var animals = [Animal]()
    var currAnimal = 0
    var currSpot = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        loadAnimals()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    private func loadAnimals(){
        
        let photo1 = UIImage(named: "animal1")
        let photo2 = UIImage(named: "animal2")
        let photo3 = UIImage(named: "animal3")
        let photo4 = UIImage(named: "animal4")
        
        guard let animal1 = Animal(name: "Great White", photo: photo1, scientificName: "Carcharodon carcharias", className: "Chondrichthyes", size: "680.0 kg") else {
            fatalError("Unable to instantiate animal1")
        }
        
        guard let animal2 = Animal(name: "Common Cuttlefish", photo: photo2, scientificName: "Sepia Officinalis", className: "Cephalopada", size: "4.0 kg") else {
            fatalError("Unable to instantiate animal2")
        }
        
        guard let animal3 = Animal(name: "Takhi", photo: photo3, scientificName: "Equus Feris", className: "Mammalia", size: "300.0 kg") else {
            fatalError("Unable to instantiate animal3")
        }
        
        guard let animal4 = Animal(name: "Asian Elephant", photo: photo4, scientificName: "Elephas Maximus", className: "Mammalia", size: "5500.0 kg") else {
            fatalError("Unable to instantiate animal4")
        }
        
        animals += [animal1, animal2, animal3, animal4]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return animals.count * 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var animal = animals[3]
        
        if(currSpot == 0){
            animal = animals[0]
        }
        
        if(currAnimal <= 3 && currSpot != 0){
            animal = animals[currAnimal]
        }
        
        if (currSpot % 2 == 0 || currSpot == 0)
        {
            
            let cellIdentifier = "AnimalCell"
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? AnimalCell  else {
                fatalError("The dequeued cell is not an instance of AnimalCell.")
            }
            
            
            cell.animalPic.image = animal.photo
            cell.animalTitle.text = animal.name
            
            currSpot += 1
            
            
            print("Animal Cell Type")
            print(currAnimal)
            print(currSpot)
            return cell
        }
            
        else{
            
            let cellIdentifier = "AnimalInfoCell"
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? AnimalInfoCell  else {
                fatalError("The dequeued cell is not an instance of AnimalInfoCell.")
            }
            
            cell.animalSciName.text = "Scientific Name: \(animal.scientificName)"
            cell.animalClassLabel.text = "Class: \(animal.className)"
            cell.weightLabel.text = "Weight: \(animal.size)"
            
            
            currSpot += 1
            currAnimal += 1
            
            print("Animal Info Cell Type")
            print(currAnimal)
            print(currSpot)
            return cell
        }
        
    }
    

}
