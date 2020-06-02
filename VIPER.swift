import Foundation

// MARK: - VIPER

public protocol RouterInterface: RouterPresenterInterface {
    associatedtype PresenterRouter

    var presenter: PresenterRouter! { get set }
}

public protocol InteractorInterface: InteractorPresenterInterface {
    associatedtype PresenterInteractor

    var presenter: PresenterInteractor! { get set }
}

public protocol PresenterInterface: PresenterRouterInterface & PresenterInteractorInterface & PresenterViewInterface {
    associatedtype RouterPresenter
    associatedtype InteractorPresenter

    var router: RouterPresenter! { get set }
    var interactor: InteractorPresenter! { get set }
}

public protocol ViewInterface {
    associatedtype PresenterView

    var presenter: PresenterView! { get set }
}

public protocol EntityInterface {}

// MARK: - Module Communication

public protocol RouterPresenterInterface: AnyObject {}

public protocol InteractorPresenterInterface: AnyObject {}

public protocol PresenterRouterInterface: AnyObject {}

public protocol PresenterInteractorInterface: AnyObject {}

public protocol PresenterViewInterface: AnyObject {}

// MARK: - Module

public protocol ModuleInterface {
    associatedtype View where View: ViewInterface
    associatedtype Presenter where Presenter: PresenterInterface
    associatedtype Router where Router: RouterInterface
    associatedtype Interactor where Interactor: InteractorInterface

    static func assemble( /* view: View, */ presenter: Presenter, router: Router, interactor: Interactor)
}

public extension ModuleInterface {
    static func assemble( /* view: View, */ presenter: Presenter, router: Router, interactor: Interactor) {
        presenter.interactor = (interactor as! Self.Presenter.InteractorPresenter)
        presenter.router = (router as! Self.Presenter.RouterPresenter)

        interactor.presenter = (presenter as! Self.Interactor.PresenterInteractor)

        router.presenter = (presenter as! Self.Router.PresenterRouter)
    }
}
