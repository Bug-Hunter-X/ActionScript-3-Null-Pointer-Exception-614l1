To prevent this error, always check for null before accessing an object's properties.  Here's how you can modify the code:
```actionscript
if (myObject != null) {
  myObject.someProperty = "someValue";
} else {
  // Handle the case where myObject is null
  trace("myObject is null!");
}
```
Alternatively, use the `hasOwnProperty()` method to check if the object exists and has the specified property.  This is safer if you expect some objects might not have certain properties:
```actionscript
if (myObject && myObject.hasOwnProperty("someProperty")) {
    myObject.someProperty = "someValue";
} else {
    // Handle the case where myObject is null or doesn't have the property
}
```
These solutions ensure that your code gracefully handles situations where an object may be null, preventing runtime exceptions and making your application more robust.