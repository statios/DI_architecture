//
//  ViewController.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

import UIKit

class ViewController: UIViewController {

  let dp = Dependencies {
    Dependency { A() }
    Dependency { B() }
  }
  
  @Injected var aClass: A
  @Injected var bClass: B
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad")
  }

  @IBAction func register(_ sender: Any) {
    dp.register()
    print(AppRepository.shared.dependencies)
  }
  
  @IBAction func remove(_ sender: Any) {
    dp.remove()
    print(AppRepository.shared.dependencies)
  }
  
  @IBAction func callA(_ sender: Any) {
    print(aClass.title)
    print(AppRepository.shared.dependencies)
  }
  
  @IBAction func callB(_ sender: Any) {
    print(bClass)
    print(AppRepository.shared.dependencies)
  }
}

class A {
  let title = "THISISA"
  init() {
    print("class a init")
  }
  deinit {
    print("class a deinit")
  }
}

class B {
  init() {
    print("class b init")
  }
  deinit {
    print("class b deinit")
  }
}
