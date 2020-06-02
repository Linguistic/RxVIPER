//
//  ___VARIABLE_productName___Module.swift
//  LinguisticNative
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

import LGKit

// MARK: - Router -> Presenter

protocol ___VARIABLE_productName___RouterPresenterInterface: RouterPresenterInterface {}

// MARK: - Presenter -> Router

protocol ___VARIABLE_productName___PresenterRouterInterface: PresenterRouterInterface {}

// MARK: - Presenter -> Interactor

protocol ___VARIABLE_productName___PresenterInteractorInterface: PresenterInteractorInterface {}

// MARK: - Presenter -> View

protocol ___VARIABLE_productName___PresenterViewInterface: PresenterViewInterface {
    func viewDidLoad()
}

// MARK: - Interactor -> Presenter

protocol ___VARIABLE_productName___InteractorPresenterInterface: InteractorPresenterInterface {}

// MARK: - Module Builder

final class ___VARIABLE_productName___Module: ModuleInterface {
    typealias View = ___VARIABLE_productName___View
    typealias Presenter = ___VARIABLE_productName___Presenter
    typealias Router = ___VARIABLE_productName___Router
    typealias Interactor = ___VARIABLE_productName___Interactor

    static func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()

        let viewModel = ___VARIABLE_productName___ViewModel()
        let view = View()

        view.presenter = presenter
        view.viewModel = viewModel

        presenter.viewModel = viewModel

        assemble(
            presenter: presenter,
            router: router,
            interactor: interactor
        )

        return view
    }
}
