

## Standalone 22

##### https://github.com/lmu-cmsi2022-spring2023/standalone-rohit-t

| Category | Feedback | Points |
| --- | --- | ---: |
| | **Baseline functionality** | |
| • Top-level list of information | Top level list meets criteria | 10/10 |
| • Detail view of individual item | Detail view has movie name, watched button, about, and image. | 15/15 |
| • At least one filter/search | Implements a "watched" filter | 10/10 |
| • At least one user-modifiable property | Watched property is user-modifiable | 10/10 |
| | **Implementation** | |
| • Model objects | Model object meets all criteria | 7/7 |
| • JSON data | JSON data meets all criteria | 5/5 |
| • Environment wrapper and binding | Use of environment objects to connect model to views is generally OK, however, you instantiate a ModelData object twice: once in StandaloneApp and another time in ContentView. (–1) You only need one copy of it since it's an EnvironmentObject.<br><br>You're also using the unneeded copy of your JSON data (the one that is outside of the ModelData class) to compute `features` and `categories`. These variables should probably have been initialized inside of the ModelData class, so that you could use the ModelData.movies copy instead of the external one. | 4/5 |
| • Layout and composition | Layout and composition meet criteria | 7/7 |
| • Colors and other visuals | Colors and visuals meet criteria | 7/7 |
| • Use of images, properly credited | Credits in _about.md_ and _RohitTStandaloneApp.swift_ | 5/5 |
| • Proper choice of input views and controls | Input views and controls properly implemented | 7/7 |
| • At least one animation or transition | No animation/transition found. (–4) The `animation()` in your ProfileHost doesn't create an actual animation, it removes the changed values from the profile editor, and the ProfileHost isn't initialized in your final submission anyways | 0/4 |
| • Custom app icon | App icon meets criteria | 3/3 |
| | **Other categories** | |
| _about.md_ | Great! Covers all necessary features of the app. | 5/5 |
| Code maintainability | No major code maintainability issues found |  |
| Code readability | No major code readability issues found |  |
| Version control | Very few commits, and it looks like you committed some files via upload with the GitHub website. This is understandable in some cases but eventually, try to get the hang of doing adds, commits, and pushes completely from the command line. Small deduction here (–1) but would incur a higher deduction in the future. | -1 |
| Punctuality | First commit on 2/13 9:18pm; latest commit on 2/13 9:55pm. Accommodated to 2/13 11:59:59.999pm due to technology access issues. |  |
| | **Total** | **94/100** |

Graded score will be divided by two to match 50-point total as given in syllabus: **47/50**.
