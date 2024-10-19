//
//  ContentView.swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(" Users List ")
        // https://www.hackingwithswift.com/samples/friendface.json

           .task { // добавляем этот модификатор к представлению (Лист например)
                await loadData()
                  }
                 // Далее создаем ф-ию для загрузки данных из интернет
            func loadData() async {
                      guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else { // Создаем ЮРЛ из строки
                          print("Invalid URL") // ошибка если юрл невозможно создать
                          return
                      }
                      do {
                          let (data, _) = try await URLSession.shared.data(from: url) // пробуем  получить Дату из Юрл создавая запрос

                          if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) { // декодируем Дату в ТИП нашей структуры ДЖЕЙСОНА
                              results = decodedResponse.results // передаем загруженный массив результатов из загруженного инфо в массив структуры // Далее таблица заполнится
                          }
                      } catch {
                          print("Invalid data") // ловим ошибки
                      }
                  }
    }
}

#Preview {
    ContentView()
}
