//
//  AccountBalanceScreen.swift
//  LearnTouchID
//
//  Created by Mohammad Azam on 7/4/21.
//

import SwiftUI

struct AccountBalanceScreen: View {
    var body: some View {
        VStack {
            Text("Account Balance $10,000")
                .font(.title)
                
            NavigationLink("Go", destination: Text("Page 3"))
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
    }
}

struct AccountBalanceScreen_Previews: PreviewProvider {
    static var previews: some View {
        AccountBalanceScreen()
    }
}
