Config = []

// For YouTube and Spotify to work you must create your own API, in order not to cause crash problems, due to the number of customers we have.
// You will be forced to create your own APIs yourself, as in the guide to see below on YouTube.
// You can add a secondary API in case your API goes down.
// https://www.youtube.com/watch?v=N18czV5tj5o

// It is important that you add two different APIs in each one, otherwise it will not work.

Config.SongsAPI = 'AIzaSyASz8L-SaBSC99C62gzLVxwuoYEQu8QvBo' // Do not leave these fields empty or by default.
Config.SecondarySongsAPI = 'AIzaSyDIyOqQXZqhX2GA4f9l8BW00GmrmXCORTo' // Do not leave these fields empty or by default.

Config.YoutubePlaylist = 'PLU9c-BCMnvA7VHuhIGxXBGn11qkY5IGU6' // Create an album and paste the end of the link here.

Config.DefaultAlbum = 'Album' // This is the prefix for Gallery Albums.

Config.JobsBlockedToContact = [ // Skip this part.
    "police",
    "ambulance",
    "mechanic",
]


// Don't touch this, it won't make any changes.
Config.HeaderDisabledApps = [
    "bank",
    "whatsapp",
    "meos",
    "garage",
    "racing",
    "houses",
    "lawyers",
    "youtube",
]

// Weather translations for your widget.
function WeatherTranslation(x) {
    if (x == "RAIN") { x = "Rain" }
    else if (x == "THUNDER") { x = "Thunder" }
    else if (x == "CLEARING") { x = "Clearing" }
    else if (x == "CLEAR") { x = "Clear" }
    else if (x == "EXTRASUNNY") { x = "Extrasunny" }
    else if (x == "CLOUDS") { x = "Clouds" }
    else if (x == "OVERCAST") { x = "Overcast" }
    else if (x == "SMOG") { x = "Smog" }
    else if (x == "FOGGY") { x = "Foggy" }
    else if (x == "XMAS") { x = "Christmas" }
    else if (x == "SNOWLIGHT") { x = "Snowlight" }
    else if (x == "BLIZZARD") { x = "Blizzard" }
    else if (x == "BILINMIYOR") { x = "Other" } else { x = "Other" }
    return x
}

// Dates of your phone.
Config.January = "January"
Config.February = "February"
Config.March = "March"
Config.April = "April"
Config.May = "May"
Config.June = "June"
Config.July = "July"
Config.August = "August"
Config.September = "September"
Config.October = "October"
Config.November = "November"
Config.December = "December"

Config.Jan = "Jan"
Config.Feb = "Feb"
Config.Mar = "Mar"
Config.Apr = "Apr"
Config.May = "May"
Config.Jun = "Jun"
Config.Jul = "Jul"
Config.Aug = "Aug"
Config.Sept = "Sept"
Config.Oct = "Oct"
Config.Nov = "Nov"
Config.Dec = "Dec"

Config.Sunday = "Sunday"
Config.Monday = "Monday"
Config.Tuesday = "Tuesday"
Config.Wednesday = "Wednesday"
Config.Thursday = "Thursday"
Config.Friday = "Friday"
Config.Saturday = "Saturday"

Config.Everyday = "Every day"
Config.Weekend = "Weekend"
Config.Weekdays = "Weekdays"

// App state, remember to edit the html too.
Config.Job1 = "police" // Default "police"
Config.Job2 = "ambulance" // Default "ambulance"
Config.Job3 = "lawyer" // Default "lawyer"
Config.Job4 = "taxi" // Default "taxi"

// Skip this part.
Config.HeaderColors = {
    "image-zoom": {
        "top": "black",
        "bottom": "white"
    },
    "store": {
        "top": "black",
        "bottom": "black"
    },
    "bank": {
        "top": "white",
        "bottom": "white"
    },
    "twitter": {
        "top": "black",
        "bottom": "black"
    },
    "phone": {
        "top": "black",
        "bottom": "black"
    },
    "mail": {
        "top": "black",
        "bottom": "black"
    },
    "advert": {
        "top": "black",
        "bottom": "black"
    },
    "racing": {
        "top": "white",
        "bottom": "white"
    },
    "houses": {
        "top": "white",
        "bottom": "white"
    },
    "food": {
        "top": "white",
        "bottom": "black"
    },
    "food": {
        "top": "white",
        "bottom": "black"
    },
    "clock": {
        "top": "black",
        "bottom": "black"
    },
    "calculator": {
        "top": "white",
        "bottom": "white"
    },
    "arrests": {
        "top": "white",
        "bottom": "black"
    },
    "whatsapp": {
        "top": "black",
        "bottom": "black"
    },
    "settings": {
        "top": "black",
        "bottom": "black"
    },
    "photos": {
        "top": "black",
        "bottom": "black"
    },
}