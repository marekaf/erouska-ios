//
//  FileController.swift
//  BT-Tracking
//
//  Created by Lukáš Foldýna on 16/03/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import UIKit

class FileController: UIViewController {

    // MARK: - Outlets

    @IBOutlet private weak var textView: UITextView!

    private var timer: Timer?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    // MARK: - Setup

    private func setup() {
        textView.text = ""

        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { [weak self] timer in
            self?.textView.text = FileLogger.shared.getLog()
        }
    }

    // MARK: -

    func purgeLog() {
        textView.text = ""
    }
    
}
