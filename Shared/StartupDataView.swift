//
//  StartupDataView.swift
//  Stockoholic
//
//  Created by T Krobot on 5/11/22.
//

import SwiftUI
struct SheetView5: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}


@available(iOS 16.0, *)
struct StartupDataView: View {
    init() {
        UITableView.appearance().backgroundColor = .white
        
    }
    @State private var showingSheet5 = false
    @State private var startUpAmount = 0.0
    @available(iOS 16.0, *)
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button {
                    showingSheet5.toggle()
                } label: {
                    Image(systemName:  "text.book.closed")
                        .font(.title)
                }
                .sheet(isPresented: $showingSheet5) {
                    SheetView5()
                }
                .position(x: 27, y: 8)
                
            }
            VStack   {
                Text("Tesla Coils")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.white)
                ZStack {
                    Rectangle()
                        .frame(width: 300, height: 200)
                        .border(Color(red: 0.86222222222, green: 0.93777777777, blue: 0.91111111111), width: 5)
                        .foregroundColor(Color(red: 0.03111111111, green: 0.14666666666, blue: 0.20444444444))
                    Image(systemName: "chart.xyaxis.line")
                        .font(.system(size: 180))
                }
                VStack {
                    Text("Tesla Coils")
                        .font(.largeTitle)
                        .font(Font.body.bold())
                    VStack {
                        Text("Price paying :")
                            .font(Font.body.bold())
                        VStack {
                            Form {
                                Section {
                                    TextField("Amount", value: $startUpAmount, format: .currency(code: Locale.current.currencyCode ?? "SGD"))
                                        .keyboardType(.decimalPad)
                                        .listRowBackground(Color(UIColor.systemGroupedBackground))
                                        .cornerRadius(10)
                                        .frame(width: 350, height: 60)
                                        .foregroundColor(.white)
                                        .background(Color("BackgroundColor"))
                                        .cornerRadius(10)
                                }
                            }
                            
                            
                            VStack {
                                Text("Quanity :")
                                    .font(Font.body.bold())
                            }
                            Form {
                                Section {
                                    if #available(iOS 16.0, *) {
                                        TextField("Amount", value: $startUpAmount, format: .currency(code: Locale.current.currencyCode ?? "SGD"))
                                            .keyboardType(.decimalPad)
                                            .frame(width: 350, height: 60)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .listRowBackground(Color(UIColor.systemGroupedBackground))
                                            .scrollContentBackground(.hidden)
                                            .background(Color("BackgroundColor"))
                                    } else {
                                        // Fallback on earlier versions
                                    }
                                }
                            }
                        }
                        VStack {
                            HStack {
                                Button {
                                    print("buy")
                                }label: {
                                    Text("Invest")
                                        .frame(width: 100, height: 30)
                                        .padding()
                                        .background(.green)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct StartupDataView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            StartupDataView()
                .preferredColorScheme(.dark)
        } else {
            // Fallback on earlier versions
        }
    }
}
