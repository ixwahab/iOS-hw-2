//
//  ContentView.swift
//  restraunt
//
//  Created by Abdulwahab Alqallaf on 15/03/2022.
//

import SwiftUI

struct ContentView: View {
@State var num1 = ""
    @State var num2 = ""
    @State var num3 = ""
    @State var num4 = ""
    @State var num5 = ""
    @State var num6 = ""
    @State var total = 0.0
    @State var message = ""
    
    var body: some View {
        
        ZStack{
            Color(.purple)
                .ignoresSafeArea()
        
        VStack{
            Text("baskin robbins")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
            Image("b")
            Text("قائمة الطعام")
                .font(.largeTitle)
                .fontWeight(.medium)
                
            
            Spacer()
                
            VStack{
                HStack{
                    TextField("الكمية", text: $num1)
                    Text("0.850 KD")
                    Text("كوتون كاندي")
                        
                    
                    
                }
                    HStack{
                        TextField("الكمية", text: $num2)
                        Text("0.800 KD")
                    Text("فانيليا")
                        
                        
                    }
                        HStack{
                            TextField("الكمية", text: $num3)
                            Text("0.750 KD")
                    Text("شوكولاته")
                            
                            
                        }
                            HStack{
                                TextField("الكمية", text: $num4)
                                Text("0.950 KD")
                    Text("كوكيز")
            
                            }
                                HStack{
                                    TextField("الكمية", text: $num5)
                                    Text("0.850 KD")
                    Text("ستروبيري")
                                    
                                }
                HStack{
                    TextField("المبلغ", text: $num6)
                    Text("ادخل المبلغ الذي لديك")
                    
                    
                }
                Text("اضغط لمعرفة الفاتورة")
                    .padding()
                    .background(.yellow)
                    .onTapGesture {
                        var price1 = (Double(num1) ?? 0) * 0.800
                        var price2 = (Double(num2) ?? 0) * 0.950
                        var price3 = (Double(num3) ?? 0) * 0.750
                        var price4 = (Double(num4) ?? 0) * 0.650
                        var price5 = (Double(num5) ?? 0) * 0.850
                        total = price1 + price2 + price3 + price4 + price5
                        if total > (Double(num6) ?? 0){
                            
                            message = "عفوا لا يوجد مبلغ كافي"
                            
                            
                        }
                        else {
                            message = "تمت العملية بنجاح"
                        }
                    }
                
                Text("\(total)المبلغ الاجمالي")
                Text("\(message)")
                
                
                
                
            }
                }
            }
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        

                
