//
//  ListViewController.swift
//  ListApp
//
//  Created by Mark Chen on 2021/11/15.
//

import UIKit
import SnapKit
import ListAppUIKit
import Network
import Image

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
        Service.instance.foo()
        
        let bar = ImageLoader()
        bar.foo()
    }
}
