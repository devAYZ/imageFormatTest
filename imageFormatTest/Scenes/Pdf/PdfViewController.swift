//
//  PdfViewController.swift
//  imageFormatTest
//
//  Created by Ayokunle Pro on 2/16/23.
//

import UIKit

class PdfViewController: BaseViewController {
    
    //
    @IBOutlet weak var nextButton: UIButton!

    override func basicSetup() {
        //
        view.backgroundColor = .white.withAlphaComponent(0.7)
        title = "PDF Assets"
        nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //hideNavigationBar()
    }
    
    @objc func handleNext() {
        mainCoordinator?.openPngController()
    }

}
