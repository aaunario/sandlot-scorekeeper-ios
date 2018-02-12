//
//  NewGameViewController.swift
//  sandlotscorekeeper
//
//  Created by Ayrris Aunario on 11/5/17.
//  Copyright © 2017 Ayrris Aunario. All rights reserved.
//

import UIKit

class NewGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("New Game menu view")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func newGameTapped(_ sender: UIButton) {
        print("new game btn tapped")
        let ac:UIAlertController = UIAlertController(title: "New Game", message: "Are you sure you want to start a new game?", preferredStyle: .alert)

        let confirmAction:UIAlertAction = UIAlertAction(title: "Confirm", style: .default) { (alert: UIAlertAction!) -> Void in
            let lineupVC:UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "NewGame")
            self.present(lineupVC, animated: true, completion: nil)
            print("New game confirmed")
        }
        
        let cancelAction:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (alert: UIAlertAction!) -> Void in
            print("New game CANCELLED")
        }
        
        ac.addAction(confirmAction)
        ac.addAction(cancelAction)
        self.present(ac, animated: true, completion: nil)
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
