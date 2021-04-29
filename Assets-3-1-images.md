# Assets-3-1-images

### 注冊載入資源

pubspec.yaml file default tip
```yaml
# The following section is specific to Flutter.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true
  
 # To add assets to your application, add an assets section, like this:
  # assets:
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg
 assets:
  - here your go
```

#### 注冊指定單一資源
```yaml
  assets:
    - assets/images/icons/dimond.png
```

#### 注冊資料夾下的資源
```yaml
  assets:
    - assets/images/icons/
```


學習資源:
* [How to include images in your app](https://stackoverflow.com/questions/50903106/how-to-add-image-in-flutter)
* [Adding assets and images](https://flutter.dev/docs/development/ui/assets-and-images)
