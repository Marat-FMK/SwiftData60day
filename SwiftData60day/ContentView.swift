//
//  ContentView.swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @Query var users: [User]
    
    var body: some View {
        
        Text(" Users List ")
        // https://www.hackingwithswift.com/samples/friendface.json
        
        List {
            ForEach(users) { user in
                Text(user.name)
            }
        }
        .task { // добавляем этот модификатор к представлению (Лист например)
                await loadData()
                  }
                 // Далее создаем ф-ию для загрузки данных из интернет
           
    }
    
    func loadData() async {
              guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else { // Создаем ЮРЛ из строки
                  print("Invalid URL") // ошибка если юрл невозможно создать
                  return
              }
              do {
                  let (data, _) = try await URLSession.shared.data(from: url) // пробуем  получить Дату из Юрл создавая запрос

                  if let decodedResponse = try? JSONDecoder().decode(User.self, from: data) { // декодируем Дату в ТИП нашей структуры ДЖЕЙСОНА
                     // results = decodedResponse.results // передаем загруженный массив результатов из загруженного инфо в массив структуры // Далее таблица заполнится
                  }
              } catch {
                  print("Invalid data") // ловим ошибки
              }
          }
}

#Preview {
    ContentView()
}
