//
//  ContentView.swift
//  GreenHalloween
//
//  Created by Rachael Close on 10/15/22.
//

import SwiftUI
import SwiftUICharts
import Combine





struct HomeView: View{
   
    var body: some View {
        
        
      
        NavigationView {
            
            
            ZStack{
                
                
                Image("home")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(1)
                    .navigationTitle(" ")
                VStack{
                    Text("14 days")
                        .bold()
                        .font(.title)
                    Text("18 hours")
                        .bold()
                        .font(.title)
                    Text(" ")
                        .bold()
                        .font(.title)
                    Text(" ")
                        .bold()
                        .font(.title)
                }
                
                
                
                Spacer()
                HStack{
                    NavigationLink(destination: ContentView(), label: {
                        Text(" ")
                            .frame(width: 250, height: 400, alignment: .bottom)

                        
                    })
                    
                    NavigationLink(destination: DisposalView(), label: {
                        Text(" ")
                            .frame(width: 250, height: 400, alignment: .bottom)

                        
                    })
                    
                }
                
            }
            
            
            
        }
        
    } }

    
    


struct ContentView: View {
    
    
    private var listOfCandy = candyList
    @State var searchText = ""
    
    var body: some View {
        VStack{
            
                
                List {
                    ForEach(candies, id: \.self) { candy in
                        HStack {
                            NavigationLink(destination: RatingView(), label: {
                                Text(candy.capitalized) })
                            Spacer()
                            Image(systemName: "leaf").foregroundColor(Color.green)
                            
                        }
                        
                        
                        .padding()
                        
                    }
                    
                }
                .searchable(text: $searchText)
                .navigationTitle("Search")
                
                .opacity(1)
                .background(
                    Image("searchbarimage")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(1)
                )
                
                
            
            
        }
    }
        var candies: [String] {
            let lcCandies = listOfCandy.map {$0.lowercased() }
            
            return searchText == "" ? lcCandies : lcCandies.filter {
                $0.contains(searchText.lowercased())
            }
        }
        
        
        
        
    }
    

        
        
        
       
    
struct RatingView: View {
        
        var body: some View {
            
            
            
            

            ZStack {
                
                VStack {
                 
                    
                    Spacer()
                    
                    Text("SCORE PUMPKIN")
                    
                        .foregroundColor(.white)
                    
                        .bold()
                    
                        .font(.custom("AmericanTypewriter", fixedSize: 15))
                    
                        .padding(.bottom)
                    
                    
                    
                    HStack (spacing: 10) {
                        
                        Image("pumpking_excellent")
                        
                            .resizable()
                        
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                        Image("pumpking_good")
                        
                            .resizable()
                        
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                        Image("pumpking_fair")
                        
                            .resizable()
                        
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                        Image("pumpking_poor")
                        
                            .resizable()
                        
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                        Image("pumpking_bad")
                        
                            .resizable()
                        
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    
                    
                    
                    HStack {
                        
                        /**
                         
                         Image(systemName: "globe")
                         
                         .imageScale(.large)
                         
                         .foregroundColor(.accentColor)
                         
                         */
                        
                        
                        
                        Text("Leading the industry on policy")
                        
                            .multilineTextAlignment(.center)
                        
                            .font(.custom("AmericanTypewriter", fixedSize: 6))
                        
                            .padding(.all)
                        
                            .background(Color.white
                                        
                                .blur(radius: 3.0))
                        
                        
                        
                        
                        
                        Text("Starting to implement good policies")
                        
                            .multilineTextAlignment(.center)
                        
                            .font(.custom("AmericanTypewriter", fixedSize: 6))
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                            .background(Color.white
                                        
                                .blur(radius: 3.0))
                        
                        
                        
                        Text("Needs more work on policy and implemen-\ntation")
                        
                            .multilineTextAlignment(.center)
                        
                            .font(.custom("AmericanTypewriter", fixedSize: 6))
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                            .background(Color.white
                                        
                                .blur(radius: 3.0))
                        
                        
                        
                        Text("Needs to catch up with the\n industry")
                        
                            .multilineTextAlignment(.center)
                        
                            .font(.custom("AmericanTypewriter", fixedSize: 6))
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                            .background(Color.white
                                        
                                .blur(radius: 3.0))
                        
                        
                        
                        Text("Lacking in trans-\nparency")
                        
                            .multilineTextAlignment(.center)
                        
                            .font(.custom("AmericanTypewriter", fixedSize: 6))
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                            .background(Color.white
                                        
                                .blur(radius: 3.0))
                        
                        
                        
                    }
                    
                    Spacer()
                    
                    
                    
                    VStack {
                        
                        Image("kk")
                        
                            .resizable()
                        
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                        
                        
                        Text("LEVEL OF SUSTAINABILITY")
                        
                            .foregroundColor(.white)
                        
                            .bold()
                        
                            .font(.custom("AmericanTypewriter", fixedSize: 20))
                        
                        
                        
                        
                        
                        /**
                         
                         BarChartView(data: ChartData(values: [("Traceability/ Transparency", 5),("Living Income", 3),("Child Labour", 2),("Deforestation & Climate", 8),("Agroforestry", 4),("Agrichemical", 7),("Management", 5)]), title: " ", legend: "", style: ChartStyle(backgroundColor: Color.black.opacity(0), accentColor: Color.black.opacity(0), gradientColor: GradientColor(start: Color.red, end: Color.green), textColor: Color.white.opacity(0), legendTextColor: Color.white.opacity(0), dropShadowColor: Color.white.opacity(1)), form: ChartForm.extraLarge, dropShadow: true)
                         
                         */
                        
                        
                        
                        
                        
                        BarChartView(data: ChartData(values: [("Traceability", 5),("Living Income", 3),("Child Labour", 2),("Deforestation & Climate", 8),("Agroforestry", 4),("Agrichemical", 7),("Management", 5)]), title: " ", legend: "Legend", style: ChartStyle(backgroundColor: Color.black.opacity(0), accentColor: Color.orange.opacity(1), gradientColor: GradientColor(start: Color.red, end: Color.green), textColor: Color.white.opacity(1), legendTextColor: Color.black.opacity(0.7), dropShadowColor: Color.white.opacity(1)), form: ChartForm.extraLarge, dropShadow: false)
                        
                        
                        
                    }
                    
                    
                    
                }
                
                .padding(.all)
                
                
                
                /**
                 
                 GeometryReader{
                 
                 geometry in
                 
                 HStack (alignment: .bottom, spacing: 0){
                 
                 /**
                  
                  Text("Categories")
                  
                  .font(.custom("AmericanTypewriter", size: 12, relativeTo: .headline))
                  
                  .padding()
                  
                  */
                 
                 let columWidth = geometry.size.width / CGFloat(weekSales.count)
                 
                 
                 
                 let labelHeight = geometry.size.height * 0.09
                 
                 let graphHeight = geometry.size.height * 0.6
                 
                 let valueHeight = geometry.size.height * 0.18
                 
                 
                 
                 ForEach(weekSales)
                 
                 {
                 
                 weekData in
                 
                 VStack{
                 
                 Text(weekData.weekDay)
                 
                 .font(.caption)
                 
                 .bold()
                 
                 .frame(maxWidth: .infinity, maxHeight: labelHeight, alignment: .center)
                 
                 let columnHeight = calculateColumnHeight(graphHeight: graphHeight, weekData: weekData)
                 
                 Rectangle()
                 
                 .cornerRadius(5)
                 
                 .padding(.horizontal, 5)
                 
                 .frame(maxHeight: .infinity)
                 
                 .frame(maxWidth: .infinity, maxHeight: columnHeight, alignment: .bottom)
                 
                 .foregroundColor(Color.blue)
                 
                 Text(formatSales(weekData: weekData))
                 
                 .font(.caption2)
                 
                 .frame(maxWidth: .infinity, maxHeight: valueHeight, alignment: .bottom)
                 
                 }
                 
                 .padding(.vertical)
                 
                 .frame(maxWidth: columWidth)
                 
                 }
                 
                 }
                 
                 .padding(.horizontal)
                 
                 }
                 
                 }
                 
                 func formatSales( weekData: WeekData) -> String {
                 
                 return String(format: " ", weekData.sales)
                 
                 //return String(format: "$%.2f", weekData.sales)
                 
                 }
                 
                 
                 
                 func calculateColumnHeight(graphHeight: Double, weekData: WeekData) -> Double {
                 
                 let size = weekData.sales / largestSales() * graphHeight
                 
                 return size.isNaN ? 0.0 : size
                 
                 
                 
                 }
                 
                 */
                
                .background(
                    Image("Untitled_Artwork")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(1)
                )
                
               
                
            }

        }

        

    
}




struct DisposalView: View {
    var body: some View {
        Image("words")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .opacity(1)
            .navigationTitle(" ")
        
            
        }
    
        
        
    
}





struct ContentView_Previews: PreviewProvider {
    var home : Bool
    static var previews: some View {
        HomeView()
        
    }
    
  
    
}
