//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//  Template generated by Sally's Zone
//

import Foundation
import Swinject
import SwinjectStoryboard

class VFUK___VARIABLE_productName:identifier___Assembler: Assembly {
	func assemble(container: Container) {
		self.assemble___VARIABLE_productName:identifier___Module(container: container)
		container.storyboardInitCompleted(VFUK___VARIABLE_productName:identifier___ViewController.self) { (resolver, viewController) in
			viewController.initialize(viewModel: resolver.resolve(VFUK___VARIABLE_productName:identifier___ViewModelProtocol.self, name: self.registrationName)!)
		}
	}

	private func assemble___VARIABLE_productName:identifier___Module(container: Container) {
		container.register(VFUK___VARIABLE_productName:identifier___DispatcherProtocol.self, name: self.registrationName) { (_) in
			VFUK___VARIABLE_productName:identifier___Dispatcher()
		}
		container.register(VFUK___VARIABLE_productName:identifier___InteractorProtocol.self, name: self.registrationName) { (resolver) in
			VFUK___VARIABLE_productName:identifier___Interactor(dispatcher: resolver.resolve(VFUK___VARIABLE_productName:identifier___DispatcherProtocol.self, name: self.registrationName)!)
		}
		container.register(VFUK___VARIABLE_productName:identifier___ViewModelProtocol.self, name: self.registrationName) { (resolver) in
			VFUK___VARIABLE_productName:identifier___ViewModel(interactor: resolver.resolve(VFUK___VARIABLE_productName:identifier___InteractorProtocol.self, name: self.registrationName)!)
		}
	}
}
