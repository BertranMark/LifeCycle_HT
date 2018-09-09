//
//  YellowViewController.swift
//  LifeCycle_HT
//
//  Created by Bertran on 09.09.2018.
//  Copyright © 2018 Bertran. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    func updateMemo()
    {
        memo.text = outputText
        // отображение обновленного стека сообщений возможно только в этом контроллере
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateOutputText(with: "Контроллер Yellow, метод \(#function)")
        
        yellowTitle.text = "Контроллер Yellow\nКласс YellowViewController"
        // выведем в видимую область контроллера информацию о нем для пользователя
        
        updateMemo()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateOutputText(with: "Контроллер Yellow, метод \(#function)")
        
        updateMemo()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateOutputText(with: "Контроллер Yellow, метод \(#function)")
        
        updateMemo()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        updateOutputText(with: "Контроллер Yellow, метод \(#function)")
        
        updateMemo()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        updateOutputText(with: "Контроллер Yellow, метод \(#function)")
        
        updateMemo()
    }
    
    @IBOutlet weak var memo: UITextView!
    @IBOutlet weak var yellowTitle: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
