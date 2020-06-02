//
//  ___VARIABLE_productName___View.swift
//  LinguisticNative
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

final class ___VARIABLE_productName___View: UIViewController, ViewInterface {
    var presenter: ___VARIABLE_productName___Presenter!
    var viewModel: ___VARIABLE_productName___ViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}