import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo: Bool = false;
    @State var leftAmountInputValue: String = "";
    @State var rightAmountInputValue: String = "";
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea();
            
            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200);
                
                Text("Current Exchange")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold();
                
                
                HStack {
                    VStack {
                        HStack {
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 32);
                            
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundColor(.white);
                        }
                        
                        TextField("Amount", text: self.$leftAmountInputValue)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Image(systemName: "equal")
                        .foregroundStyle(.white)
                        .bold()
                        .padding()
                        .symbolEffect(.pulse);
                    
                    VStack {
                        HStack {
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 32);
                            
                            Text("Gold piece")
                                .font(.headline)
                                .foregroundColor(.white);
                        }
                        
                        TextField("Amount", text: self.$rightAmountInputValue)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
                .padding()
                .background(.black.opacity(0.5));
                
                Spacer();
                HStack {
                    Spacer();
                    
                    Button {
                        self.showExchangeInfo.toggle();
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white);
                    }
                    .padding(.trailing)
                    .sheet(isPresented: self.$showExchangeInfo) {
                        ExchangeInfo()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
