/// Base interface for lifecycle-managed services.
abstract class Service {
  /// Base interface for lifecycle-managed services.
  const new();

  /// Initializes the service.
  Future<Service> init();

  /// Releases the service resources.
  Future<void> dispose();
}
