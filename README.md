# Movie Info Browser

As we explore which movie information API to use for our Challenge 6 project, we 
are finding that the IMDb API might be too cumbersome. The OMDb API seems to be 
much simpler.

Even so, this movie info browser is not intended to be a user-friendly app. It 
is only meant for our team's research.

All this program does is show you some basic information about a movie. In the 
first draft, you had to type the movie's IMDb ID without the "tt" prefix. But 
that was way too user-unfriendly even for an internal use app.

So I changed it to instead take the movie's title. Fortunately, thanks to the 
OMDb API, you don't have to be exact with the movie titles. For example, "Empire 
strikes back" and "Are you there, God?" should pull up *Star Wars: Episode V: 
The Empire strikes back* and *Are You There, God? It's Me, Margaret*, 
respectively.

Make sure you have your OMDb API key is somewhere the program can access it but 
that it won't get picked up by Git. First, I tried putting it in an environment 
variable called `MOVIE_API_KEY`, but since this is an iOS app rather than a 
macOS program, that just didn't work.

So instead, per my mentor's suggestion, I made a Swift file called `APIKey` in 
the secrets folder and added this line after "`import Foundation`":

```
let movieAPIKey = "555_EXAMPLE_5555"
```

But of course in there I copied and pasted my actual API key instead of 
"`555_EXAMPLE_5555`". Run the Git status command to make sure that file is not 
being tracked by Git.

To get your OMDb API key, go to 
[https://www.omdbapi.com/apikey.aspx](https://www.omdbapi.com/apikey.aspx). As 
we're not expecting to do high volume on this one, the free tier should be 
adequate. Otherwise, you should sign up with Patreon.
