//
//  UIViewController + Ext.swift
//  imageFormatTest
//
//  Created by Ayokunle Pro on 2/16/23.
//

import Foundation
import UIKit

public extension UIViewController {
    
    static func instantiateControllerXib() -> Self {
        func initNib<T: UIViewController>() -> T {
            T.init(nibName: String(describing: T.self), bundle: Bundle(for: T.self))
        }
        return initNib()
    }
    
    func setNavigationControllerBackButton(newImage: UIImage? = nil) {
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain,
            target: nil, action: nil)
        var backImage = UIImage(named: "backPng")
        newImage != nil ? (backImage = newImage) : ()
        navigationController?.navigationBar.backIndicatorImage = backImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
    }
    
    func hideNavigationBar(animated: Bool = true) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func showNavigationBar() {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}
