install.packages("rtweet")

# Create Twitter tokens
phillymapbot_token <- rtweet::rtweet_bot(
  api_key       = Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  api_secret    = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token  = Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret = Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

# Generate random coordinates within specific limits
lon <- round(runif(1, -75.23, -75.10), 4)
lon <- format(lon, scientific = FALSE)
lat <- round(runif(1, 39.88, 40.0), 4)

# Build URL and fetch image from Mapbox API
img_url <- paste0(
  "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/",
  paste0(lon, ",", lat),
  ",15,0/600x400@2x?access_token=",
  Sys.getenv("MAPBOX_PUBLIC_ACCESS_TOKEN")
)

# Download the image to a temporary location
temp_file <- tempfile(fileext = ".jpeg")
download.file(img_url, temp_file)

# Build the status message (text and URL)
latlon_details <- paste0(
  lat, ", ", lon, "\n",
  "https://www.openstreetmap.org/#map=17/", lat, "/", lon, "/"
)

# Post the image to Twitter
alt_text <- paste(
  "A satellite image of a random location in Philadelphia,",
  "provided by MapBox. Typically contains a residential or",
  "industrial area, some fields or a golf course."
)

rtweet::post_tweet(
  status         = latlon_details,
  media          = temp_file,
  media_alt_text = alt_text,
  token          = phillymapbot_token
)
