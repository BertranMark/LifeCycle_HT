//
//  ViewController.swift
//  LifeCycle_HT
//
//  Created by Bertran on 05.09.2018.
//  Copyright © 2018 Bertran. All rights reserved.
//

import UIKit

var outputText : String = "" // в эту строку мы будем помещать сообщения для дальнейшего вывода в средний экран

var counter : Int = 0

func updateOutputText(with message: String)
{
  // при вызове этой глобальной функции стек сообщений  outputText будет пополнем ее параметром
    
    // небольшая подготовка для добавления времени выполнения метода
    let date = Date()
    let calendar = NSCalendar.current
    let components = calendar.dateComponents([.hour, .minute, .second], from: date)
    let time = "\(components.hour!):\(components.minute!):\(components.second!)"
    
    counter += 1
    
    outputText = "\(counter) # \(time) - \(message)\n\(outputText)"
    print(outputText)
    
}

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateOutputText(with: "Контроллер Red, метод \(#function)")
        
        redTitle.text = "Контроллер Red\nКласс RedViewController"
        // выведем в видимую область контроллера информацию о нем для пользователя
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateOutputText(with: "Контроллер Red, метод \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        updateOutputText(with: "Контроллер Red, метод \(#function)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        updateOutputText(with: "Контроллер Red, метод \(#function)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        updateOutputText(with: "Контроллер Red, метод \(#function)")
    }
    
    
    @IBOutlet weak var redTitle: UILabel!
}

