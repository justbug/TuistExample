//
//  ListViewController.swift
//  ListApp
//
//  Created by Mark Chen on 2021/11/15.
//

import UIKit
import SnapKit
import ListAppUIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        view.backgroundColor = .white
        label.text = "Hi SnapKit"
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        _ = NiceView()
    }
}