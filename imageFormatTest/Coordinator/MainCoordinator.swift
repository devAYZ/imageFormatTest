//
//  MainCoordinator.swift
//  imageFormatTest
//
//  Created by Ayokunle Pro on 2/16/23.
//

import Foundation
import UIKit

public class MainCoordinator: Coordinator {
    
    // MARK: Properties
    public var childCoordinators = [Coordinator]()
    public var navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        initInterfereVC()
    }
    
    func initInterfereVC() {
        openPdfController()
    }
    
    func openPdfController() {
        let vc = PdfViewController.instantiateControllerXib()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openPngController() {
        let vc = PngViewController.instantiateControllerXib()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openSvgController() {
        let vc = SvgViewController.instantiateControllerXib()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
