import SwiftUI

struct ExchangeRate: View {
    let description: String;
    let leftImage: ImageResource;
    let rightImage: ImageResource;
    
    var body: some View {
        HStack {
            Image(self.leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 32)
            
            Text(self.description);
            
            Image(self.rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 32);
        }
    }
}
