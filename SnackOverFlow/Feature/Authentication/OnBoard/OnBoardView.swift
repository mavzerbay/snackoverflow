//
//  OnBoardView.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 29.08.2023.
//

import SwiftUI

struct OnBoardView: View {
    
    @State var currentIndex: Int = 0
    
    /// Dummy list count
    /// - Returns: Total values of OnBoardModel.items
    func count() -> Int {
        OnBoardModel.items.count - 1
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                TabView(
                    selection: $currentIndex,
                    content: {
                        ForEach((0...count()), id: \.self){ index in
                            SliderCard(imageHeight: geometry.dh(height: 0.45),model: OnBoardModel.items[index])
                        }
                    })
                        .tabViewStyle(.page(indexDisplayMode: .never))
                    Spacer()
                    HStack {
                        ForEach((0...count()), id: \.self){ index in
                            if(index == currentIndex){
                                IndicatorRectangle(width: geometry.dw(width: 0.09))
                            }else{
                                IndicatorRectangle(width: geometry.dw(width: 0.03))
                            }
                        }
                    }.frame(height: ViewHeight.indicator)

                NormalButton(onTap: { }, title: LocaleKeys.Buttons.getStarted.rawValue).padding(.all, PagePadding.All.normal.rawValue)
                }
            }
        }
    }

    private struct SliderCard: View {
        var imageHeight: Double
        var model : OnBoardModel
        var body: some View {
            VStack {
                Image(model.imageName).frame(height: imageHeight)
                Text(model.description).font(.system(size: FontSizes.largeTitle, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .frame(alignment: .center)
                    .foregroundColor(Color.peach)
            }
        }
    }

    private struct IndicatorRectangle: View {
        var width: Double
        var body: some View {
            Rectangle().fill(Color.clooney).cornerRadius(RadiusItems.radius).frame(width: width)
        }
    }

    struct OnBoardView_Previews: PreviewProvider {
        static var previews: some View {
            OnBoardView()
        }
    }
