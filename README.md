# Vue Technical Test

Technical test for front-end job application

## Context

At Zoov, we develop an internal web app in VueJS, used to visualize and manage our bikes, trips, users and interact with our service – via our API – for support, operation and maintenance purposes. This web app is used on desktop for support client, developers and admins and on mobile for technicians on the field. The key tool is a map which aims to display the position and state of our bikes (alongside with other geolocalized entities).

We also develop several tools and web pages in VueJS, based our eveloving [design system](https://github.com/birotaio/zoov-design-system/tree/master/web).

## Goal

You will develop a minimalistic Vue app with little requirements. Its goal is to embed a map to display markers as bikes, fetched from a simple fake API.
- Use any UI component library of your choice. You can also use partly of fully – and challenge – the internal design system that we are currently developing: [@zoov/design-system](https://github.com/birotaio/zoov-design-system/tree/master/web).
- Choose any map provider you are familiar with.
- Display markers on map to represent bikes in their different states.
- These markers can be clicked to open more information on the bike and optionnaly change its state (see [A step further](#a-step-further) section).
- Responsivity would be appreciated.

## API

We propose you to fake an API with JSON data representation using [mockapi.io](https://mockapi.io/).

### Endpoint

The API URL for your test will be **sent to you by email**.
To interact with it you can use the following methods:
```
GET    /bikes
GET    /bikes/:id
POST   /bikes
PUT    /bikes/:id
DELETE /bikes/:id
```
(see the [documentation](https://mockapi.io/docs)).

### Data models

The simple **bike** data model we retained is:
```js
{
  serial_number: String,
  location: {
    type: "Point",
    coordinates: [Number, Number], // longitude, lattitude
  },
  in_order: Boolean,
  service_status: Number,
  battery_level: Number, // from 0 to 100%
}
```

And the `service_status` model is an enum:
- `1`: free
- `2`: booked
- `3`: in use

## A step further

Several actions could be triggerd from the web app:
- Update bike state
- Add bike(s)
- Delete bike(s)
- Pagination, sorting, searching, filtering (see [https://mockapi.io/docs](https://mockapi.io/docs))
- And anything that seems relevant to you

## Discussion

When the test is finished and delivered, we will discuss and challenge:
- The tehcnological choices
- The project architecture and underlying build processes
- The code quality
- The UI/UX choices
- What was missing in the API, what could be improved...
