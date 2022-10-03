
# phillymapbot

[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![](https://img.shields.io/badge/Twitter-@phillymapbot-white?style=flat&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/phillymapbot)

Source for the Twitter bot [@phillymapbot](https://www.twitter.com/phillymapbot). It posts satellite images of random coordinates in Philadelphia using [{rtweet}](https://docs.ropensci.org/rtweet/), [MapBox](https://www.mapbox.com/) and [GitHub Actions](https://docs.github.com/en/actions). Concept by [@mattdray](https://twitter.com/mattdray).

# What

This repo contains a [GitHub Action](https://github.com/features/actions) that runs on schedule (currently every half-hour). It executes R code that queries [the Mapbox API](https://docs.mapbox.com/api/maps/#static-images) for a satellite image of random co-ordinates in a bounding box roughly around Philadelphia. The image is posted to [@phillymapbot](https://www.twitter.com/phillymapbot) on Twitter using [{rtweet}](https://docs.ropensci.org/rtweet/), along with a URL for that location on [OpenStreetMap](https://www.openstreetmap.org/).

See also the:

* [blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/)
* [BotWiki page](https://botwiki.org/bot/londonmapbot/)
* [the rOpenSci {rtweet} use-case page](https://discuss.ropensci.org/t/a-twitter-bot-with-rtweet-mapbox-and-github-actions/2223)

# Image credits

Posted images are copyright of Mapbox/OpenStreetMap/Maxar. This information is embedded in every image.
