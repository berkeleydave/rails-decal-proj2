<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<!-- END doctoc generated TOC please keep comment here to allow auto update -->
SAMPLE WRITEUP (follow this format!)

Title: RailsDeCal
Team Members: Sam Lau, Howard Chen, Wonjun Jeong
Demo Link: railsdecal.com

Idea: An application where administrators can create and post new lectures and other users (being students) can comment on the lectures and post questions for admins to answer.

Models and Description:
User
has name, email, and many comments and questions
certain Users are Administrators and have lectures
Lecture
has title, topic, and summary text
Comment
has text and belongs to a User
Question
has text, flag to say if it has been answered or not, and belongs to a User

Features:
Users can log in
Admins can make lectures
Users can comment on lectures
Users can ask questions
Admins can answer questions

Division of Labor:
Sam: Made users
Howard: Made lectures and questions
Wonjun: Made views and controllers
