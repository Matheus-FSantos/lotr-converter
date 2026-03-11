import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismissPage: DismissAction;
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea();
            
            VStack(spacing: 48) {
                VStack(spacing: 20) {
                    Text("Exchange Rates")
                        .font(.title)
                        .fontWeight(.bold);
                    
                    Text(self.getParagraphText())
                        .foregroundColor(.black.opacity(0.7))
                        .fontWeight(.semibold)
                        .tracking(1)
                        .font(.subheadline);
                    
                    VStack(spacing: 16) {
                        ExchangeRate(
                            description: "1 Gold Piece = 4 Gold Pennies",
                            leftImage: .goldpiece,
                            rightImage: .goldpenny
                        )
                        ExchangeRate(
                            description: "1 Gold Penny = 4 Silver Pieces",
                            leftImage: .goldpenny,
                            rightImage: .silverpiece
                        )
                        ExchangeRate(
                            description: "1 Silver Piece = 4 Silver Pennies",
                            leftImage: .silverpiece,
                            rightImage: .silverpenny
                        )
                        ExchangeRate(
                            description: "1 Silver Penny = 100 Copper Pennies",
                            leftImage: .silverpenny,
                            rightImage: .copperpenny
                        )
                    }
                }
                .foregroundStyle(.black)
                
                Button {
                    self.dismissPage()
                } label: {
                    Text("Done")
                        .fontWeight(.bold)
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.title2)
                .buttonSizing(.flexible)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: 400)
        }.background(.brown);
    }
    
    func getParagraphText() -> String {
        return "Here at Prancing Pony, we are happy to offer you a place where you can exchange all the know currencies in the entire world except one. We used to take Brandy Bucks, but, after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Bellow is a single guide to our currency exchange rates:";
    }
}

#Preview {
    ExchangeInfo();
}
