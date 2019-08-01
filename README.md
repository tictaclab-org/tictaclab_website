# techies-lab

## You want to contribute?

Open your terminal, and `cd` to the right directory. You will work in a branch, and submit a pull request!

```bash
# First get up to date
$ git checkout master        # Go back to master branch
$ git pull origin master     # Fetch latest version
$ git sweep                  # Get rid of merged branches (Download)[http://lab.arc90.com/2012/04/03/git-sweep/]
$ bundle install             # Maybe the guys changed the Gemfile :)

# Launch the server, then go to http://localhost:4567/
$ bundle exec middleman server   # You may do this in another tab.

# Open another terminal, and create a branch to work in
$ git checkout -b your-new-feature  # Please choose a descriptive name
$ stt  # Open sublime text and work.
$ open assets/images   # If you need to add images

# Done? Great!
$ git status
$ git add .  # Git add the stuff you changed
$ git commit -m "a descriptive message about your change"
$ git push origin your-new-feature  # push YOUR branch
# Then go to GitHub and open a pull-request
```

## Deploy

With the `middleman-gh-pages` gem, you can deploy by production with the publish rake taks:

```sh
rake publish
```

It will automatically build and deploy into the `gh-pages` branch.

More info and options: [https://github.com/edgecase/middleman-gh-pages](https://github.com/edgecase/middleman-gh-pages)
