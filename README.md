# Flutter Profile Editor App

![Flutter](https://img.shields.io/badge/Flutter-3.13.0-blue)
![Dart](https://img.shields.io/badge/Dart-3.12.0-green)

A simple Flutter application for editing and displaying user profiles.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)

## Overview

The Flutter Profile Editor App is a mobile application that allows users to view and edit their profiles. It consists of two main screens:

1. **Profile View Screen**: This screen displays the user's profile information, including full name, Slack username, GitHub handle, and bio text. Users can click the "Edit Profile" button to navigate to the editing screen.

2. **Edit Profile Screen**: In this screen, users can edit their profile information, including full name, Slack username, GitHub handle, and bio text. Changes made on this screen are saved when the user presses the "SAVE" button and are reflected in the profile view.

## Features

- View user profile information.
- Edit user profile information.
- Validation to prevent saving empty fields.
- User-friendly interface.

## Getting Started

Follow these steps to set up and run the Flutter Profile Editor App on your local machine.

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install): Make sure you have Flutter and Dart installed on your development machine.

### Installation

1. Clone this repository to your local machine using Git:

   ```bash
   git clone https://github.com/Henryikenna/HNGX_Flutter-app-assignments.git

2. Install the project dependencies:

   ```bash
   flutter pub get

3. Connect a physical device or start an emulator.
4. Run the app:
   
   ```bash
   flutter run

## Usage

1. Launch the Flutter Profile Editor App on your device/emulator.

2. You will be presented with the "Profile View" screen, displaying your current profile information.

3. To edit your profile, click the "Edit Profile" button.

4. You will be taken to the "Edit Profile" screen, where you can update your full name, Slack username, GitHub handle, and bio text.

5. Ensure all fields are filled out before pressing the "SAVE" button; otherwise, an alert will prompt you to complete all fields.

6. Your changes will be saved, and you will be returned to the "Profile View" screen, where your updated profile information will be displayed.

