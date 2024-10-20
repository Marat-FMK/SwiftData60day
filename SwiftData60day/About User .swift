//
//  About User .swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftUI

struct AboutUser: View {
    
 var user: User
    
    var body: some View {
        Text(user.name)
        Divider()
        Text(user.about)
        
        ForEach(user.friends) { friend in
            Text(friend.name)
        }
    }
}

#Preview {
    AboutUser(user: User(id: "id", isActive: true, name: "name", age: 23, company: "comp", email: "email", address: "address", about: "about", registered: "reg", tags: ["regs"], friends: [Friend(id: "frID", name: "frName")]))
}
