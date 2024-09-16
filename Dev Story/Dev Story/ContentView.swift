import SwiftUI

// Enum to store long strings
enum Constants {
    static let title = "My Dev Story"
    static let pageOneText = "I knew of coding since middle school due to a Girls in Code club I joined for a month or so "
    static let pageTwoText = "I only really got into coding and devolping in college"
    static let pageThreeText = "Specifically in my Sophmore year."
    static let pageFourText = "First I hated how I was basically organizing things and doing housekeeping for the computer."
    static let pageFiveText = "Then I realized that code can do so much more."
    static let pageSixText = "Liking controlling mirco controllers."
    static let pageSevenText = "and making art"
    static let pageEightText = "I am most confident with C++ and Javascript"
    static let pageNineText = "Swift is a new language for me and coding mobile apps as well "
    static let pageTenText = "I hope to gain mobile development skills that may help me build games or functional apps that connect to a physical product"
}

struct ConfettiView: View {
    @State private var animate = false
    
    var body: some View {
    ZStack {
        ForEach(0..<15) { i in
        Circle()
        .foregroundColor(Color.purple)
        .frame(width: 10, height: 10)
        .offset(x: animate ? CGFloat.random(in: -150...150) : 0, y: animate ? CGFloat.random(in: -300...300) : 0)
        .rotationEffect(Angle.degrees(animate ? 360 : 0))
                    .opacity(animate ? 0 : 1)
        .animation(
            Animation.easeOut(duration: 2).delay(Double(i) * 0.1),
                        value: animate
                    )
            }
        }
        .onAppear {
            animate = true
        }
    }
}


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Computer") // **Image added**
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                
                Text(Constants.title)
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .padding()
                
                NavigationLink(destination: MyInfoPage1()) {
                    Text("Let's Go!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }
            .background(Color.white)
            .navigationBarHidden(true)
        }
    }
}

// Page 1
struct MyInfoPage1: View {
    var body: some View {
           ZStack {
               Color.white.ignoresSafeArea() // **White background for subsequent pages**
               VStack {
                   Image(systemName: "keyboard") // **Image added**
                       .resizable()
                       .frame(width: 200, height: 100)
                       .padding()
                   
                   Text(Constants.pageOneText)
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
                   

                   HStack {
                       Spacer()
                       NavigationLink(destination: MyInfoPage2()) {
                           Text("Next")
                               .font(.headline)
                               .foregroundColor(.white)
                               .padding()
                               .background(Color.black) // **Black button with white text**
                               .cornerRadius(10)
                       }
                   }
                   .padding()
               }
           }
       }

        
}

// Page 2
struct MyInfoPage2: View {
    var body: some View {
           ZStack { // **Added ZStack for layering**
               Color.white.ignoresSafeArea()
               VStack {
                   Text(Constants.pageTwoText)
                       .font(.title)
                       .padding()
                       .foregroundColor(.white)
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
                   
                   Image(systemName: "network") // **Image added**
                       .resizable()
                       .frame(width: 100, height: 100)
                       .padding()

                   HStack {
                       Spacer()
                       NavigationLink(destination: MyInfoPage3()) {
                           Text("Next")
                               .padding()
                               .background(Color.black)
                               .foregroundColor(.white)
                               .cornerRadius(10)
                       }
                   }
               }
           }
       }

}

// Page 3
struct MyInfoPage3: View {
    var body: some View {
        ZStack { // **Added ZStack for layering**
            Color.white.ignoresSafeArea()
            VStack {
                
                Image(systemName: "clock") // **Image added**
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                Text(Constants.pageThreeText)
                    .font(.title2)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                    .cornerRadius(8)
                


                HStack {
                    NavigationLink(destination: MyInfoPage4()) {
                        Text("Next")
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
        }
    }

}

// Page 4
struct MyInfoPage4: View {
    var body: some View {
           ZStack {
               Color.white.ignoresSafeArea()
               VStack {
                   Text(Constants.pageFourText)
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
                   
                   Image(systemName: "trash.circle") // **Image added**
                       .resizable()
                       .frame(width: 100, height: 120)
                       .padding()

                   NavigationLink(destination: MyInfoPage5()) {
                       Text("Next")
                           .padding()
                           .background(Color.black)
                           .foregroundColor(.white)
                           .cornerRadius(10)
                   }
               }
           }
       }

}

// Page 5
struct MyInfoPage5: View {
    var body: some View {
           ZStack {
               Color.white.ignoresSafeArea()
               VStack {
                   
                   Image(systemName: "lightbulb") // **Image added**
                       .resizable()
                       .frame(width: 100, height: 100)
                       .padding()
                   
                   Text(Constants.pageFiveText)
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
                   
        

                   NavigationLink(destination: MyInfoPage6()) {
                       Text("Next")
                           .padding()
                           .background(Color.black)
                           .foregroundColor(.white)
                           .cornerRadius(10)
                   }
               }
           }
       }

}

// Page 6
struct MyInfoPage6: View {
    var body: some View {
           ZStack {
               Color.white.ignoresSafeArea()
               VStack {
                   Text(Constants.pageSixText)
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
            
                   Image(systemName: "gamecontroller") // **Image added**
                       .resizable()
                       .frame(width: 100, height: 100)
                       .padding()

                   NavigationLink(destination: MyInfoPage7()) {
                       Text("Next")
                           .padding()
                           .background(Color.black)
                           .foregroundColor(.white)
                           .cornerRadius(10)
                   }
               }
           }
       }

}

// Page 7
struct MyInfoPage7: View {
    var body: some View {
           ZStack {
               Color.white.ignoresSafeArea()
               VStack {
                   
                   Image(systemName: "photo.artframe") // **Image added**
                       .resizable()
                       .frame(width: 100, height: 100)
                       .padding()
                   
                   Text(Constants.pageSevenText)
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
        

                   NavigationLink(destination: MyInfoPage8()) {
                       Text("Next")
                           .padding()
                           .background(Color.black)
                           .foregroundColor(.white)
                           .cornerRadius(10)
                   }
               }
           }
       }

}

// Page 8
struct MyInfoPage8: View {
    var body: some View {
           ZStack {
               Color.white.ignoresSafeArea()
               VStack {
                   Text(Constants.pageEightText)
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
                   
                   Image(systemName: "desktopcomputer") // **Image added**
                       .resizable()
                       .frame(width: 100, height: 100)
                       .padding()

                   NavigationLink(destination: MyInfoPage9()) {
                       Text("Next")
                           .padding()
                           .background(Color.black)
                           .foregroundColor(.white)
                           .cornerRadius(10)
                   }
               }
           }
       }

}

// Page 9
struct MyInfoPage9: View {
    var body: some View {
           ZStack {
               Color.white.ignoresSafeArea()
               VStack {
                   Image(systemName: "sun.min") // **Image added**
                       .resizable()
                       .frame(width: 100, height: 100)
                       .padding()
                   
                   Text(Constants.pageNineText)
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.purple.opacity(0.7)) // **Light purple text bubble**
                       .cornerRadius(10)
                   
                   

                   NavigationLink(destination: MyInfoPage10()) {
                       Text("Next")
                           .padding()
                           .background(Color.black)
                           .foregroundColor(.white)
                           .cornerRadius(10)
                   }
               }
           }
       }

}

// Page 10
struct MyInfoPage10: View {
    @State private var showConfetti = false
    @State private var goToFirstPage = false

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Text(Constants.pageTenText)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.purple.opacity(0.7)) // Light purple text bubble
                    .cornerRadius(8)
                
                Spacer()

                Image(systemName: "star") // Image added
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                if showConfetti {
                    ConfettiView() // Show confetti when button is clicked
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }

        NavigationLink(destination: MyInfoPage10()
                ) {
                    Button(action: {
                        withAnimation {
                            showConfetti = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            goToFirstPage = true // Navigate after the confetti finishes
                        }
                    }) {
                        Text("The End!")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(8)
                    }
                }

                Spacer()
                
                // Regular back button provided by NavigationLink without duplication
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

