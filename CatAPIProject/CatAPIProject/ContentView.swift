

import SwiftUI

struct ContentView: View {
    @StateObject var breedFetcher = BreedFetcher()
    var body: some View {
      
        if breedFetcher.isLoading {
            LoadingView()
            
        }else if breedFetcher.errorMessage != nil  {
            ErrorView(breedFetcher: breedFetcher)
        }else {
            BreedListView(breeds: breedFetcher.breeds)
        }
      
          
    }
}

#Preview{
        ContentView()
    }

