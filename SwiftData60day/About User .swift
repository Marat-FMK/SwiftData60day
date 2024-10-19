//
//  About User .swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftUI

struct About_User_: View {
    
    @Bindable var user: User
    
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
    About_User_(user: .constant(User(id: "  dedf", isActive: "weffw", name: "wefwf", age: 2, company: "wdw", email: "dwdwwww", adress: "wdwd", about: "", registered: "", tags: "", friends: [Friend(id: "233", name: "Name of Friend")])))
}
