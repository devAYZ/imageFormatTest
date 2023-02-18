//
//  PngViewController.swift
//  imageFormatTest
//
//  Created by Ayokunle Pro on 2/16/23.
//

import UIKit

class PngViewController: BaseViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!

    override func basicSetup() {
        //
        title = "PNG Assets"
        backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @objc func handleBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func handleNext() {
        mainCoordinator?.openSvgController()
    }
}
