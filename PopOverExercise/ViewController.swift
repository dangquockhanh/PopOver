//
//  ViewController.swift
//  PopOverExercise
//
//  Created by Đặng Khánh  on 4/30/19.
//  Copyright © 2019 Khánh Trắng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination
        let pc = vc.popoverPresentationController
        pc?.sourceRect = CGRect(origin: view.center, size: .zero)
        pc?.delegate = self
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    
    @IBAction func onClickPassThroughDontWork(_ sender: UIButton) {
        
        title = "Pass Through Clicked"
    }
}

