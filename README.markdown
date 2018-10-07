# Create a Podcast from a directory of MP3 files

## Generate a podcast website from a folder of MP3 files

This tool will turn a folder of audio files into a fully featured website for
your podcast, ready to upload to any web host of your choice.

Running the command `podcast` will extract information from each episode of your
podcast (title, date, etc.) and create a page for your site where users can
listen to each episode. Additionally, this program will create an RSS feed so
that users can be automatically notified when new episodes are published.

### Demo Site

We were able to record and publish each episode of our demo [Herky Hack
podcast](http://herkyhack.com) in less than ten minutes. After each episode was
encoded as an MP3, the `podcast` command would generate the HTML page for the
episode, add the episode to our RSS feed, and publish the site.

View the [source code for our demo
site](https://github.com/ajfarino2/hackUIOWA18).

### Tools Used

 * [Google Cloud](https://cloud.google.com)
   - [Cloud Storage](https://cloud.google.com/storage/) used for hosting our [demo podcast](http://herkyhack.com/)
   - [Cloud Source Repositories](https://cloud.google.com/source-repositories/) used for version control during development
 * [Domain.com](https://domain.com/)
   - Used for registering the [HerkyHack.com](http://herkyhack.com/) domain
 * [Forecast](https://overcast.fm/forecast) for encoding episodes as MP3 files
 * [Jekyll](https://jekyllrb.com/) for generating HTML
 * [Roboto](https://fonts.google.com/specimen/Roboto) font used on demo site
 * [Twitter API](https://developer.twitter.com/en/docs.html) used for sharing new episodes
