# Steps to Run the App
1. Clone Project
2. Change Bundle ID
3. Run

# Focus Areas: What specific areas of the project did you prioritize? Why did you choose to focus on these areas?
In general I wanted a well rounded app, but my largest focus would have been the project structure. It could have been in a file or two but I chose
to structure it out in a MVVM architectural pattern. Having seperate views for various UI components also cleans up the code. I chose to focus on this because it organizes up the project 
and would make scalability much easier.

# Time Spent: Approximately how long did you spend working on this project? How did you allocate your time?
I spent around 4 hours on this. An hour to setup the project and have it receiving data, half hour handling errors, an hour and a half to get the searching, design, navigating, working out bugs and wrapping it up, and an hour to handle the tests.
And about 15 mins in there somehwere to make an app icon.

# Trade-offs and Decisions: Did you make any significant trade-offs in your approach?
I didn't spend much time on the design as I chose to focus more on the functionality. There wasn't much info in the payload so keeping the UI simple seemed fine. Everything is displayed, albeit could have been a lot nicer (bigger images, in app browser, animations, 
easier to find video button, etc). I threw the video link in a contextual menu just so it's accessible as thats the only piece that's not actively displayed.

# Weakest Part of the Project: What do you think is the weakest part of your project?
The tests. I will admit I have not had much experience with testing. I spent a little bit of time learning the syntax for it and added a few tests. I will need to do some more research on when and where testing is ideal.

# External Code and Dependencies: Did you use any external code, libraries, or dependencies?
I used the Kingfisher library to handle caching the images. There was plenty of google searches on things like how to add a search bar, how to test in swift, errors I received and more. I had chatgpt make my RecipeState Equatable as I wasn't sure what that meant (was needed in testing to 
compare states). I also used ChatGPT to make sample data in swift using the json for the previews.

# Additional Information: Is there anything else we should know? Feel free to share any insights or constraints you encountered.
This was a fun little excersise. The criteria was well laid out and easy to follow. I am farely new to iOS and SwiftUI so I thoroughly enjoyed the practice.
