// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Generate Screen Access Annotations
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓

library xyz_generate_screen_access_annotations;

class GenerateScreenAccess {
  /// Set to `true` to ensure the screen can only be accessed if the current
  /// user is signed in and verified.
  final bool isOnlyAccessibleIfSignedInAndVerified;

  /// Set to `true` to ensure the screen can only be accessed if the current
  /// user is signed in (and not necessarily verified).
  final bool isOnlyAccessibleIfSignedIn;

  /// Set to `true` to ensure the screen can only be accessed if there are no
  /// currently signed-in users.
  final bool isOnlyAccessibleIfSignedOut;

  /// Set to `false` to ensure that the screen is not redirectable.
  ///
  /// Example:
  ///
  /// If your screen's route is `/delete_account`, normally you can access it
  /// by typing https://medikienct.app/delete_account in the browser. This will
  /// start the app and redirect to "/delete_account". This can be disabled
  /// by setting [isRedirectable] to `false`.
  final bool? isRedirectable;

  /// ...
  final Map<String, String> internalParameters;

  /// ...
  final Set<String> queryParameters;

  /// ...
  final List<String> pathSegments;

  /// Generates boiler-plate code for the annotated screen class to make it
  /// accessible.
  const GenerateScreenAccess({
    this.isOnlyAccessibleIfSignedInAndVerified = false,
    this.isOnlyAccessibleIfSignedIn = false,
    this.isOnlyAccessibleIfSignedOut = false,
    this.isRedirectable,
    this.internalParameters = const {},
    this.queryParameters = const {},
    this.pathSegments = const [],
  });
}
