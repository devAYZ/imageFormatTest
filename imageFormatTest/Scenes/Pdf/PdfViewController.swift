//
//  PdfViewController.swift
//  imageFormatTest
//
//  Created by Ayokunle Pro on 2/16/23.
//

import UIKit

class PdfViewController: BaseViewController {
    
    //
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!

    override func basicSetup() {
        //
//        view.backgroundColor = .secondaryLabel.withAlphaComponent(0.9)
        title = "PDF Assets"
        backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //hideNavigationBar()
    }
    
    @objc func handleBack() {
    }
    
    @objc func handleNext() {
        mainCoordinator?.openPngController()
    }

    // MARK: Images size
    // Delete button: 49w x 49h
    // empty state image: 183 x 127
    // bill image: 456.38 x 375
    // pilot: 278.4 x 236.06
    // arrow: 5.5 x 11.5
}
