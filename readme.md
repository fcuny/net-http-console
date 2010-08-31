# Net::HTTP::Console

## SYNOPSIS

### USING SPEC

    http-console --spec github.json

    http://github.com/api/v2/> user_information {"username":"franckcuny","format":"json"}
    {
       "user" : {
         "gravatar_id" : "18f15a03a4bda6f5935c2f54dd406fb0",
         "location" : "Paris, FR",
         "followers_count" : 39,
         "name" : "franck",
         "blog" : "http://lumberjaph.net/",
         "public_repo_count" : 84,
         "login" : "franckcuny",
         "email" : "franck@lumberjaph.net",
         "created_at" : "2009/03/02 00:12:31 -0800",
         "public_gist_count" : 20,
         "type" : "User",
         "id" : 59291,
         "company" : "http://linkfluence.net/",
         "following_count" : 61
       }
    }

    http://github.com/api/v2/> show headers
    connection: close
    client-response-num: 1
    cache-control: private, max-age=0, must-revalidate
    set-cookie: _github_ses=BAh7BzoRbG9jYWxlX2d1ZXNzMCIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7AA%3D%3D--e10506e0f6935897cafe4f56774e20aa35e579a5; path=/; expires=Wed, 01 Jan 2020 08:00:00 GMT; HttpOnly
    status: 200 OK
    date: Tue, 31 Aug 2010 15:01:16 GMT
    client-peer: 207.97.227.239:80
    content-length: 373
    client-date: Tue, 31 Aug 2010 15:01:15 GMT
    etag: "b8dacf607867e9478f0cb5c1d095548a"
    x-runtime: 12ms
    content-type: application/json; charset=utf-8
    server: nginx/0.7.67

### USING EXISTING LIB

    http-console --api_lib Net::Backtype

    http://api.backtype.com> help

## DESCRIPTION

