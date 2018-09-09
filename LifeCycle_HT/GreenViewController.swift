//
//  GreenViewController.swift
//  LifeCycle_HT
//
//  Created by Bertran on 09.09.2018.
//  Copyright © 2018 Bertran. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateOutputText(with: "Контроллер Green, метод \(#function)")
        greenTitle.text = "Контроллер Green\nКласс GreenViewController"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateOutputText(with: "Контроллер Green, метод \(#function)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateOutputText(with: "Контроллер Green, метод \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        updateOutputText(with: "Контроллер Green, метод \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        updateOutputText(with: "Контроллер Green, метод \(#function)")
    }
    
    @IBOutlet weak var greenTitle: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
