//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Yerdaulet Orynbay on 26.09.2024.
//

import UIKit

class ViewController: UIViewController {
 


    @IBOutlet var Buttons: [UIButton]!
    override func viewDidLoad() {
            super.viewDidLoad()
            updateButtonLayout(isLandscape: UIDevice.current.orientation.isLandscape)
        }

        override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
            super.viewWillTransition(to: size, with: coordinator)
            
            // Определяем, является ли ориентация горизонтальной (landscape)
            let isLandscape = size.width > size.height
            
            // Адаптируем кнопки при повороте экрана
            coordinator.animate(alongsideTransition: { _ in
                self.updateButtonLayout(isLandscape: isLandscape)
            })
        }

        func updateButtonLayout(isLandscape: Bool) {
            for button in Buttons {
                if isLandscape {
                    // Настройка кнопок для альбомной ориентации (landscape)
                    button.layer.cornerRadius = 20
                    button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
                } else {
                    // Настройка для портретной ориентации
                    button.layer.cornerRadius = 40 
                    button.titleLabel?.font = UIFont.systemFont(ofSize: 35)// Восстановить круглый вид
                   
                }
            }
        }
    }

