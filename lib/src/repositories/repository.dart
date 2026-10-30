/// Base interface for repositories.
abstract class Repository {
  /// Base interface for repositories.
  const new();

  /// Releases the repository resources.
  Future<void> dispose();
}
