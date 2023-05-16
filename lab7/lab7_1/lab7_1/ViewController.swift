//
//  ViewController.swift
//  lab7_1
//
//  Created by student on 16/05/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var cell: UITableViewCell!
        
    let apartments: [Apartment] = [
            Apartment(nazwa: "Mieszkanie 1", pow: 80.0, liczbaPokoi: 3, czyDwopoziomowy: false, obraz: "apartment1"),
            Apartment(nazwa: "Mieszkanie 2", pow: 100.0, liczbaPokoi: 4, czyDwopoziomowy: true, obraz: "apartment2")
        ]
        
    let houses: [House] = [
            House(nazwa: "Dom 1", pow: 200.0, liczbaPokoi: 5, w_dzialki: 500.0, liczbaPieter: 2, obraz: "house1"),
            House(nazwa: "Dom 2", pow: 300.0, liczbaPokoi: 6, w_dzialki: 800.0, liczbaPieter: 3, obraz: "house2")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 0 {
            return apartments.count
        } else if section == 1 {
            return houses.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0 {
            let apartment = apartments[indexPath.row]
            cell.textLabel?.text = apartment.nazwa
            cell.imageView?.image = UIImage(named: apartment.obraz)
        } else if indexPath.section == 1 {
            let house = houses[indexPath.row]
            cell.textLabel?.text = house.nazwa
            cell.imageView?.image = UIImage(named: house.obraz)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Mieszkania"
        } else if section == 1 {
            return "Domy"
        }
        return nil
    }

    
}

struct House {
    let nazwa: String
    let pow: Double
    let liczbaPokoi: Int
    let w_dzialki: Double
    let liczbaPieter: Int
    let obraz: String
}

struct Apartment {
    let nazwa: String
    let pow: Double
    let liczbaPokoi: Int
    let czyDwopoziomowy: Bool
    let obraz: String
}
