**Dockerfile for neovim**

Docker base image for [neovim](https://github.com/neovim/neovim)

You can use it with your own `.nvim` configuration file like this:

    FROM felikz/neovim
    ADD .nvim /root/.nvim

Then build and run it:

    docker build -t nvim .
    docker run -ti --rm --name nvim nvim

You can mount directory like this:

    docker run -ti --rm --name nvim -v ~/myproject:/data nvim

Also you can embed your plugins in your own Dockerfile based on this image so it will not rebuild it each time you run it.