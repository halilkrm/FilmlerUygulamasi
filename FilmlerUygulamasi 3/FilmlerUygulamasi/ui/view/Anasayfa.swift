//
//  Anasayfa.swift
//  FilmlerUygulamasi
//
//  Created by Kasım on 17.02.2023.
//

import SwiftUI

struct Anasayfa: View {
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.kategorilerListesi){ kategori in
                    NavigationLink(destination: FilmSayfa(kategori: kategori)){
                        KategoriItem(kategori: kategori)
                    }
                }
            }.navigationTitle("Kategoriler")
                .onAppear{
                    viewModel.kategorileriYukle()
                }
        }
    }
}

struct Anasayfa_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
