//
//  ViewModel.swift
//  cardProj
//
//  Created by jason hillegass on 9/9/21.
//

import Foundation

///MARK: Enum for state control

final public class FlashCardManager
{
    fileprivate var userView: UserViewState = UnknownTypeUser()
    
    public func enterApp(userName: String, userEmail: String)
    {
        userView = UnknownTypeUser(context: self)
        userView.validate(userName: userName, userEmail: userEmail)
        
    }
    
    public func cardButtonTapped() {
        let userViewCopy = userView
        userViewCopy.cardButtonTapped()
    }
    
    public func accountButtonTapped() {
        let userViewCopy = userView
        userViewCopy.accountButtonTapped()
    }
    
    public func createButtonTapped() {
        let userViewCopy = userView
        userViewCopy.createButtonTapped()
    }
}
