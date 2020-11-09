//
//  ViewController2.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

import UIKit

class ViewController2: UIViewController {
  init() {
    super.init(nibName: nil, bundle: nil)
    print("Init ViewController2")
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad")
    view.backgroundColor = .systemPink
  }
  deinit {
    print("Deinit ViewController2")
  }
}
