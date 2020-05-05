# On the Shoulders of other giants

This is based on Dockerfile created by jessfraz [here](https://github.com/jessfraz/dockerfiles/blob/master/chrome/stable/Dockerfile)
The [blog](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/) that brought me there is more than 5 years old.

Fortunately the `Dockerfile` itself is "just" 15 months old (as of early May 2020)

Additionally, it seems that the blog post (and possibly the `Dockerfile`) may be written for linux host.
While Docker is supposed to host OS agnostic (?) on macOS I don't have `/dev/snd`

I also do not _need_ sound for my "Chrome on Docker"

So what I have created in mainly for my own consumption.

I have made changes to the original `Dockerfile` to fix errors I got.

I have also downloaded `chrome.json` so that it may save you an additional step.
