//
//  MainScreenViewController.swift
//  CatOnCould
//
//  Created by Yang Yi  on 01/11/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            performCheck()
    }
    private func performCheck() {
        performSegue(withIdentifier: "loginSegue", sender: self)
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
