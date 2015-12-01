<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<!-- END doctoc generated TOC please keep comment here to allow auto update -->
Title: Groupie
Team Members: Sam Lau, Howard Chen, Wonjun Jeong
Demo Link: railsdecal.com

Idea: An application where administrators can create and post new lectures and other users (being students) can comment on the lectures and post questions for admins to answer.

Models and Description:
User
has name, age, location, age, sex, , interest and phone number
belongs to a location
Phone number is validated for uniqueness

Location
has name, users and pois (points of interest)
name is validated for uniqueness

Poi (Point of interest)
has name, price, location
belongs to a location
name is validated for uniqueness

Features:
Users can create profiles and log in
Users can also create POIs in a certain location
Users can be matched to other users

Division of Labor:
Sam: Made users
Howard: Made lectures and questions
Wonjun: Made views and controllers
