//
//  Dependencies.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

import Foundation

protocol DependenciesType {
  func register()
  func remove()
}

class Dependencies: DependenciesType {
  
  @_functionBuilder struct DependencyBuilder {
    static func buildBlock(_ dependency: Dependency) -> Dependency { dependency }
    static func buildBlock(_ dependencies: Dependency...) -> [Dependency] { dependencies }
  }
  
  convenience init(@DependencyBuilder _ dependencies: () -> [Dependency]) {
    self.init()
    self.dependencies = dependencies()
  }
  
  convenience init(@DependencyBuilder _ dependency: () -> Dependency) {
    self.init()
    self.dependencies.append(dependency())
  }
  
  var dependencies = [Dependency]()

  func register() {
    self.dependencies.forEach { dependency in
      guard AppRepository.shared.dependencies.first(where: { $0.name == dependency.name }) == nil else {
        return
      }
      print("register \(dependency.name)")
      AppRepository.shared.dependencies.append(dependency)
      let index = AppRepository.shared.dependencies.endIndex
      AppRepository.shared.dependencies[index-1].resolve()
    }
  }
  
  func remove() {
    self.dependencies.forEach { dependency in
      let index = AppRepository.shared.dependencies.firstIndex { $0.name == dependency.name }
      if let index = index {
        AppRepository.shared.dependencies[index].remove()
        AppRepository.shared.dependencies.remove(at: index)
        print("remove \(dependency.name)")
      }
    }
  }
  
}
