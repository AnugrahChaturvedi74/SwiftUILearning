//
//  ContentView.swift
//  SwiftUI1
//
//  Created by Anugrah on 13/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack{
                cityTextView(cityName: "Lucknow")
                mainWeatherVstackView(imageName: isNight ? "cloud.sun.rain.fill" : "sun.horizon.fill" )
                HStack(spacing: 8) {
                    WeatherDayView(dayOfWeek: "Mon",
                                   imageName: "cloud.sun.rain" ,
                                   temperature: "28°")
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sun.snow.fill" ,
                                   temperature: "28°")
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.rain.fill" ,
                                   temperature: "28°")
                    WeatherDayView(dayOfWeek: "THUR",
                                   imageName: "cloud.sun.bolt.fill" ,
                                   temperature: "28°")
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunrise.fill" ,
                                   temperature: "28°")
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: "sun.horizon.fill" ,
                                   temperature: "28°")
                }
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    weatherButton(title: "Change Date Time")
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String = "Tue"
    var imageName: String = "cloud.sun.rain"
    var temperature: String = "76°"
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(temperature)
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var isNight : Bool
    var body: some View {
        LinearGradient(colors: isNight ? [.blue, .green]
                       :[.black, .gray],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct cityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .heavy, design: .default))
            .foregroundStyle(.white)
            .padding(EdgeInsets(top: 18, leading: 0, bottom: 0, trailing: 0))
    }
}

struct mainWeatherVstackView: View{
    var imageName: String
    var body: some View {
        VStack(spacing : 8 ) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 170, height: 120)
            Text("76°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 80)
    }
}

