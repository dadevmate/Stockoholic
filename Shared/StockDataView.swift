//
//  StockDataView.swift
//  Stockoholic
//
//  Created by T Krobot on 5/11/22.
//

import SwiftUI

struct StockDataView: View {
    @State private var quantityOfStock = ""
    var body: some View {
        ZStack {
            Color(red: 0.03111111111, green: 0.14666666666, blue: 0.20444444444)
                .edgesIgnoringSafeArea(.all)
            VStack   {
                Text("Apple")
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
                    Text("Apple")
                        .font(.largeTitle)
                        .font(Font.body.bold())
                    VStack {
                        Text("Pricefdnmfmmnfmf :")
                            .font(Font.body.bold())
                        VStack {
                            TextField("Amount", text: $quantityOfStock)
                                .keyboardType(.decimalPad)
                                .frame(width: 250, height: 60)
                                .foregroundColor(.white)
                                .background(.gray)
                                .cornerRadius(10)
                        }
                        VStack {
                            HStack {
                                Button {
                                    print("buy")
                                }label: {
                                    Text("Buy")
                                        .frame(width: 100, height: 30)
                                        .padding()
                                        .background(.green)
                                        .cornerRadius(10)
                                }
                                Button {
                                    print("sell")
                                }label: {
                                    Text("sell")
                                        .frame(width: 100, height: 30)
                                        .padding()
                                        .background(.red)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct StockDataView_Previews: PreviewProvider {
    static var previews: some View {
        StockDataView()
            .preferredColorScheme(.dark)
    }
}