//
//  Dependency.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

struct Dependency {
  typealias ResolveBlock<T> = () -> T

  private(set) var value: Any?
  private let resolveBlock: ResolveBlock<Any>
  let name: String

  init<T>(_ block: @escaping ResolveBlock<T>) {
    resolveBlock = block
    name = String(describing: T.self)
  }

  mutating func resolve() {
    value = resolveBlock()
  }
  
  mutating func remove() {
    value = nil
  }
}
