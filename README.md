# docker-crawler-detect
CrawlerDetect API in a Docker container

This Dockerfile just runs a standalone PHP web server that
returns a JSON response that indicates whether either the
specified User-Agent string (passed as 'agent' in a GET or
POST request) is a bot. If 'agent' isn't specified, it will
fall back to the User-Agent header.

Jim Winstead
<jimw@trainedmonkey.com>

See the LICENSE file for licensing information. Please note that this license
may be more permissive than some of the supporting libraries used.
