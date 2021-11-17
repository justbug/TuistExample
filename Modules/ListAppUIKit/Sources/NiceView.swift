//
//  ListViewController.swift
//  ListApp
//
//  Created by Mark Chen on 2021/11/15.
//

import UIKit
import SnapKit

public class NiceView: UIView {
    public init() {
        super.init(frame: .zero)
        let view = UIView()
        addSubview(view)
        view.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
