//
//  ViewController+mSDK.swift
//  msdk-objc
//
//  Created by Олег В. Твердохлеб on 13/12/2018.
//  Copyright © 2018 oltv00. All rights reserved.
//

import Foundation
import YandexCheckoutPayments
import YandexCheckoutPaymentsApi

extension ViewController {

    @objc
    func start() {
        let clientApplicationKey = "<Ключ для клиентских приложений>"
        let amount = Amount(value: 999.99, currency: .rub)
        let inputData = TokenizationModuleInputData(clientApplicationKey: clientApplicationKey,
                                                    shopName: "Космические объекты",
                                                    purchaseDescription: """
                                                    Комета повышенной яркости, период обращения — 112 лет
                                                    """,
                                                    amount: amount)
        let viewController = TokenizationAssembly.makeModule(inputData: inputData,
                                                             moduleOutput: self)
        present(viewController, animated: true, completion: nil)
    }
}

// MARK: - TokenizationModuleOutput

extension ViewController: TokenizationModuleOutput {
    public func didFinish(on module: TokenizationModuleInput) {
        DispatchQueue.main.async { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }
    }
    
    public func didSuccessfullyPassedCardSec(on module: TokenizationModuleInput) {
        DispatchQueue.main.async { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }
    }
    
    public func tokenizationModule(_ module: TokenizationModuleInput,
                                   didTokenize token: Tokens,
                                   paymentMethodType: PaymentMethodType) {
        DispatchQueue.main.async { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }
    }
}
