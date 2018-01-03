//
//  DashboardViewController.swift
//  MyWorkplace
//
//  Created by Gayatri Nagarkar on 09/10/17.
//  Copyright © 2017 JCI. All rights reserved.
//

import UIKit

let kCellReuseIdentifier = "RoomCollectionViewCell"

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var occupancyLabel: UILabel!
    @IBOutlet weak var roomsCollectionView: UICollectionView!
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: Constants.kStoryboard_Login, bundle: nil)
        
        // instantiate your desired ViewController
        let rootViewController = storyboard.instantiateViewController(withIdentifier: Constants.kViewController_Login)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if let window = appDelegate.window {
            window.rootViewController = rootViewController
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection: Int) -> Int {
        
        return 2;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kCellReuseIdentifier, for: indexPath) as! RoomCollectionViewCell
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        
        let result = formatter.string(from: date)
        dateLabel.text = result
        
        formatter.dateFormat = "HH:mm"

        let resultTime = formatter.string(from: date)
        timeLabel.text = resultTime
        
        occupancyLabel.text = "Current Occupancy: 336"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

