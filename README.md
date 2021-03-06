# reddit2opml
reddit2opml is a script that converts a list of Reddit RSS links to OPML format. The generated OPML can be imported into your favorite RSS reader (https://en.wikipedia.org/wiki/Liferea)

# Example workflow
* Export a list of Reddit subscriptions as RSS from this page: https://www.reddit.com/subreddits/mine
* Save the list of urls into a file: reddit_rss_subscriptions_list.txt
* Convert the urls - run:
``` shell
   ./reddit2opml.pl reddit_rss_subscriptions_list.txt > reddit_subscriptions.opml
```
* Import the generated OPML RSS list reddit_subscriptions.opml into Liferea

Example input file reddit_rss_subscriptions_list.txt:

https://www.reddit.com/r/Bitcoin.rss

https://www.reddit.com/r/DIY.rss


Corresponding output OPML:

```xml
<opml version="2.0">
  <body>
    <outline title="Feeds" text="Feeds" description="Feeds" type="folder">
    
	    <outline title="Bitcoin" text="Bitcoin" description="Bitcoin" type="rss" xmlUrl="https://www.reddit.com/r/Bitcoin.rss" htmlUrl="https://www.reddit.com/r/Bitcoin"/> 
	    
	    <outline title="DIY" text="DIY" description="DIY" type="rss" xmlUrl="https://www.reddit.com/r/DIY.rss" htmlUrl="https://www.reddit.com/r/DIY"/> 
	    
    </outline>
  </body>
</opml>
```
