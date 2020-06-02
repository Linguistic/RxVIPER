# RxVIPER

This repo contains an Xcode template (`.xctemplate`) for generating RxVIPER module directories, described at length in our [blog post](https://blog.golinguistic.com/reactive-viper-architecture/).

To install, simply add the `VIPER.swift` file to your project, then copy the `RxVIPER Module.xctemplate` directory to:

```
~/Library/Developer/Xcode/Templates/Project Templates
```

and restart Xcode.

Now when you create a new file in Xcode, at the bottom of the file window you should be able to see a new RxVIPER module option:

![Xcode window](https://user-images.githubusercontent.com/2104129/83486377-e9d22a80-a45d-11ea-8512-38f291079934.png)

Be sure to create a new group for the module before using the template, as the template will place the files in whichever directory or group is currently selected.
