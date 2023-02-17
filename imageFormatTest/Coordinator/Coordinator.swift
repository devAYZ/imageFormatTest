//
//  Coordinator.swift
//  imageFormatTest
//
//  Created by Ayokunle Pro on 2/16/23.
//

import Foundation
import UIKit

public protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
