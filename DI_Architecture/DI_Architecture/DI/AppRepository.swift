//
//  AppRepository.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

class AppRepository {
  static let shared = AppRepository()
  var dependencies = [Dependency]()
  
  func resolve<T>() -> T {
    guard let dependency = dependencies.first(where: { $0.value is T })?.value as? T else {
      fatalError("Can't resolve \(T.self)")
    }
    return dependency
  }
  
}

