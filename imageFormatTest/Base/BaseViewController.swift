//
//  BaseViewController.swift
//  imageFormatTest
//
//  Created by Ayokunle Pro on 2/16/23.
//

import Foundation
import UIKit

public class BaseViewController: UIViewController {
    
    public weak var mainCoordinator: MainCoordinator?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        basicSetup()
    }
    
    // MARK: Basic Setup
    public func basicSetup() {
        setNavigationControllerBackButton()
    }
}
