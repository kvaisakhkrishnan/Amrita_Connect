//
//  LibraryView.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 06/06/22.
//

import SwiftUI
import SwiftSoup

struct ExamView: View {
    @State var option = ""
    
   
    var containerWidth:CGFloat = UIScreen.main.bounds.width - 32.0
    var body: some View {
            ZStack
            {
                LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 148/255, blue: 130/255), Color(red: 125/255, green: 119/255, blue: 250/255)]),
                               startPoint: .topTrailing,
                               endPoint: .leading)
                .edgesIgnoringSafeArea(.top)
                ScrollView{
                    VStack
                    {
                        Text("Exam Cell")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        ZStack
                        {
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .padding(.top,70)
                                .edgesIgnoringSafeArea(.top)
                            VStack
                            {
                                Text("Search")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .padding(.top, 95)
                                    .padding(.bottom, 30)
                                
                                Text("Select Requirement")
                                    .font(.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal,35)
                                    .padding(.bottom , 30)
                                
                                NavigationLink(destination: AboutCOEView()) {
                                    Text("About Deputy COE")
                                        .frame(width: containerWidth * 0.80)
                                        .padding(.vertical,15)
                                        .padding(.horizontal,10)
                                        .background(Color(red: 234/255, green: 234/255, blue: 234/255))
                                        .foregroundColor(.black)
                                        .cornerRadius(15)
                                }
                                .padding(.bottom, 5)
                                NavigationLink(destination: OddSemester()) {
                                    Text("Odd Semester")
                                        .frame(width: containerWidth * 0.80)
                                        .padding(.vertical,15)
                                        .padding(.horizontal,10)
                                        .background(Color(red: 234/255, green: 234/255, blue: 234/255))
                                        .foregroundColor(.black)
                                        .cornerRadius(15)
                                }
                                .padding(.bottom, 5)
                                NavigationLink(destination: EvenSemester()) {
                                    Text("Even Semester")
                                        .frame(width: containerWidth * 0.80)
                                        .padding(.vertical,15)
                                        .padding(.horizontal,10)
                                        .background(Color(red: 234/255, green: 234/255, blue: 234/255))
                                        .foregroundColor(.black)
                                        .cornerRadius(15)
                                }
                                .padding(.bottom, 5)
                                NavigationLink(destination: FAQView()) {
                                    Text("FAQ")
                                        .frame(width: containerWidth * 0.80)
                                        .padding(.vertical,15)
                                        .padding(.horizontal,10)
                                        .background(Color(red: 234/255, green: 234/255, blue: 234/255))
                                        .foregroundColor(.black)
                                        .cornerRadius(15)
                                }
                                .padding(.bottom,5)
                           
                            }
                            .padding(.bottom, 30)
                            
                        }
                       
                    }
                    
                }
                
            }
        }
        
    }

struct ExamView_Previews: PreviewProvider {
    static var previews: some View {
        ExamView()
    }
}
