import SwiftUI

struct FilmClutterContentView: View {

    @ObservedObject var viewModel = FilmClutterViewModel.default

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.filmBackground
                FilmClutterProgressView()
                SightShape()
                    .stroke(lineWidth: 3)
                    .fill(Color.sights)
                Text(String(self.viewModel.countdownNumber))
                    .foregroundColor(Color.fontColor)
                    .fontWeight(.medium)
                    .font(.system(size: 160))
            }
        }
    }

}