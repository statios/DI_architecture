//
//  ViewController2.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

import UIKit
import Resolver

class ViewController2: UIViewController {
  
  @Injected var aClass: A
  
  let button = UIButton()
  
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
    
    view.addSubview(button)
    button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button.widthAnchor.constraint(equalToConstant: 100).isActive = true
    button.backgroundColor = .red
  }
  deinit {
    print("Deinit ViewController2")
  }
  @objc func tappedButton() {
    view.backgroundColor = .systemTeal
  }
  
}
