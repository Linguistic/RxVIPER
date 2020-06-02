//
//  RequestConversationPresenter.swift
//  LinguisticNative
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

final class ___VARIABLE_productName___Presenter: PresenterInterface {
    var router: ___VARIABLE_productName___RouterPresenterInterface!
    var interactor: ___VARIABLE_productName___InteractorPresenterInterface!

    weak var viewModel: ___VARIABLE_productName___ViewModel!
}

// MARK: - Presenter -> Router

extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___PresenterRouterInterface {}

// MARK: - Presenter -> Interactor

extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___PresenterInteractorInterface {}

// MARK: - Presenter -> View

extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___PresenterViewInterface {
    func viewDidLoad() {
        /// All didLoad() logic that does not involve explicitly
        /// creating subviews should go here
    }
}
