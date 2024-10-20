//
//  About User .swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftUI

struct About_User_: View {
    
 private var user: User
    
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
   
}
