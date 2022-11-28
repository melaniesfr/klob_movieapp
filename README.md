# Movie App in Flutter

## Introduction
A simple movie app that lets you displays some movie on the screen. You can add some detail of movie too here.

## Supported Devices
- Redmi Note 9 (Android)

## Supported Features
- List of movies
- Form to add new movies

## Instructions to Build The App
### Build an App Bundle
From the command line:
1. Enter `cd klob_movieapp`.
2. Run `flutter build appbundle`.

The release bundle is created at `klob_movieapp/build/app/outputs/bundle/release/app.aab`.

### Build an APK
From the command line:
1. Enter `cd klob_movieapp`.
2. Run `flutter build apk --split-per-abi`.
   - (The flutter build command defaults to `--release`)

This command results in three APK files:
- `klob_movieapp/build/app/outputs/apk/release/app-armeabi-v7a-release.apk`
- `klob_movieapp/build/app/outputs/apk/release/app-arm64-v8a-release.apk`
- `klob_movieapp/build/app/outputs/apk/release/app-x86_64-release.apk`

Removing the `--split-per-abi` flag results in a fat APK that contains code compiled for *all* the target ABIs. Such APKs are larger in size than their split counterparts, causing the user to download native binaries that are not applicable to their device’s architecture.

### Install an APK on a Device
From the command line:
1. Connect Android device to the computer with a USB cable.
2. Enter `cd klob_movieapp`.
3. Run `flutter install`.

> By: Melanie Safira Vebriana