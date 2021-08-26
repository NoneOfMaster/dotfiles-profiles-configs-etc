module.exports = {
  defaultBrowser: "Firefox Developer Edition",
  options: {
    // set to false for easy config reload when autoreloading cuts out
    hideIcon: true,
    // logs to the Finicky console for debugging
    logRequests: false,
    checkForUpdate: true,
  },
  handlers: [
    {
      match: ["zoom.us/*", finicky.matchDomains(/.*\zoom.us/), /zoom.us\/j\//],
      browser: "us.zoom.xos",
    },
    {
      match: "open.spotify.com/*",
      browser: "Spotify",
    },
  ],
};
