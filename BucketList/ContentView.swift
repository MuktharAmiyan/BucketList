//
//  ContentView.swift
//  BucketList
//
//  Created by Mukthar Amiyan on 06/01/24.
//


import SwiftUI


struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView:View {
    var body: some View {
        Text("Success")
    }
}

struct FailedView:View {
    var body: some View {
        Text("Failed")
    }
}

 
 
struct ContentView: View {
    enum LoadingState {
        case loading,success,failed
    }
    @State private var loadingState = LoadingState.loading
    var body: some View {
        switch loadingState {
        case .loading:
            LoadingView()
        case .success:
            SuccessView()
        case .failed:
            FailedView()
        }
    }
    
}

#Preview {
    ContentView()
}
