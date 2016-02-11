# 1.1 Think About Time Reflection

I learned about meditation, setting small goals to in turn see large results, the Pomodoro Technique, tiny habits and time boxing. To me all of these seem to relate back to time boxing. In time boxing you establish a set amount of time, say 30 minutes. You focus entirely for those 30 minutes (I’m talking no phones, no snacks, no stopping to pet your dog… Sorry, Birdie.) When the timer goes off you give yourself a short break. Maybe 5 minutes. Reflect on what you accomplished.
I definitely intend on utilizing this in Phase 0 after being out of school for so long and having some seriously lax time management at this point in my life.
I will set a timer for 30 minutes and really work at what is in front of me. I’ll take a small break when the timer goes off, look at what I have done and what I still need to do, then set the timer for 35 minutes the next time. From my research, I came across the idea of keeping tack of progress and I like this technique as well. Since we improve in such small increments, if I can find a way to log these improvement and visualize it then I think it will help me keep motivated when things get really tough.
As I said, I currently have a pretty laid back life style. I work nights so I sleep until late morning. The only real time restraint I have is I start getting ready for work 1.5 hours before I have to be there and I always leave 30 minutes before my call time (I hate being late). Obviously my life will change significantly now that I am enrolled in DEV. I am not entirely sure what amount of time I will allot myself when I am time boxing. Perhaps I will try to start small then increase to hours without breaks or maybe I will find that I consistently need a short break while working - I am not afraid of a trial and error process and acknowledge that it’s going to take a little time for me to find my groove. I do know that I want to get my work done in the mornings so I will factor that in to my schedule. In addition to my take on time boxing, I really want to try meditating as well. I downloaded the Headspace app that was recommended in The Power of Meditation article and I’m excited to give it a go.

# 1.2 The Command Line Reflection

Shell is the way to interact with the raw horsepower of computers. It’s the command line interpreter. Bash, the “Bourne again shell” is the most popular Unix shell.
I’ve really liked learning more about the command line but I found the video sort of hard to watch. I wasn’t really following the majority of what he was talking about but towards the end when he reached the pipeline section it did help me get a better grasp on the subject, since that’s where I got confused in The Command Line Crash Course. A visit to Codeacademy helped me out as well. Pushed and popd seemed a little grey as well, but I think they are really useful and I will continue to jump around my computer using those to get a better idea.
I was able to follow along with the tutorial pretty well. As far as the video, I think with more use of the shell I will be like “ohhhhh this is what he was talking about”, and be able to go back to that with more understanding.
From the commands I know currently I think the grep, ls, pwd, kill, cat, mkdir,less, <, >, and | all seem pretty important. Aliases are really useful as well to save time/typing but seem a little limited from what I saw in the video. Functions seem more versatile. I am really interested to see how this changes as I learn more, and also to read what my peers think of as important commands. I am a pretty unexperienced programmer so my mind is constantly being boggled over here.

Alright, now to see if I can remember these suckers off the top of my head

-pwd- this prints the working directory to tell you where you are in the command line
-ls list all directories/files
-mv move file/directory
-cd change directory
-../ move up one directory
-touch create a new file
-mkdir create a new directory
-less page through a file
-rmdir remove a directory
-rm remove a file
-help provides info about commands

# 1.4 Forking and Cloning Reflection
I am going to teach y’all how to make a new repo, clone a repo, and fork a repo!
To make a new repository go to your github profile. On the top right there is a little plus sign- click it, then the ‘new repository’ option. This takes you to a page where you will name the repo, decide if it is public or private, and add a license. Then just click the green create repository button and you are done! Congrats.
You now need to clone this to your machine.
On the repos page there is a link (I used the https link both times, unsure of the SSH option). Copy this link and enter your terminal. Use the pwd command to ensure you are in the right place, the use git clone “THE URL YOU JUST COPIED” to clone to your machine.
To fork a repository you will first go to the page of the one you want. On github there is a fork option on the right under the teeny photo of yourself-click it. Github will ask where you want the repository to be forked to- click your username. Github will then redirect you to the copy of the repository you just made. You can then clone the repo to your machine using the steps i just outlined above.
You fork a repo instead of creating a new one because sometimes users create really cool stuff that you want a copy of! By forking it you make your own distinct copy that you can edit, save, and take in an entirely new direction if you so choose.

I didn’t have any troubles forking/cloning but I did have trouble once I got to the command line. Once I got the file forked, I navigated to its directory and wanted to open that file in sublime from the command line- I was over thinking it of course. I did a little research on how to do this (and actually found a github repo on the subject) and realized I only need to type sublime then the file name.