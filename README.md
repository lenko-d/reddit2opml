# reddit2opml
Convert a list of Reddit RSS links to OPML format. The generated OPML can be imported into your favorite RSS reader(https://en.wikipedia.org/wiki/Liferea)

# Example workflow
* Export a list of Reddit subscriptions as RSS from this page: https://www.reddit.com/subreddits/mine
* Save the list of urls into a file: reddit_rss_subscriptions_list.txt
* Convert the urls - run:
``` shell
   ./reddit2opml.pl reddit_rss_subscriptions_list.txt > reddit_subscription.opml
```
* Import the list into Liferea

Example input:

  https://www.reddit.com/r/Bitcoin.rss
  https://www.reddit.com/r/DIY.rss

Corresponding output:

```xml
<opml version="2.0">
  <body>
    <outline title="Feeds" text="Feeds" description="Feeds" type="folder">
    
	    <outline title="Bitcoin" text="Bitcoin" description="Bitcoin" type="rss" xmlUrl="https://www.reddit.com/r/Bitcoin.rss" htmlUrl="https://www.reddit.com/r/Bitcoin"/> 
	    
	    <outline title="DIY" text="DIY" description="DIY" type="rss" xmlUrl="https://www.reddit.com/r/DIY.rss" htmlUrl="https://www.reddit.com/r/DIY"/> 
	    
    </outline>
  </body>
</opml>
```xml
