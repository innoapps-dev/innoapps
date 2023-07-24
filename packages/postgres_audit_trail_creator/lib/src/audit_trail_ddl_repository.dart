import 'package:postgres_audit_trail_creator/postgres_audit_trail_creator.dart';

class JsonAuditTrailDDLRepository implements AuditTrailDDLRepository {
  @override
  String createAuditTrailTable(
    PostgresTable table,
  ) {
    return '''
CREATE TABLE ${table.name}_audit (
    id SERIAL PRIMARY KEY,
    action VARCHAR(10),
    timestamp TIMESTAMP DEFAULT NOW(),
    changed_data JSONB
);''';
  }
}

class ColumnBasedAuditTrailDDLRepository implements AuditTrailDDLRepository {
  @override
  String createAuditTrailTable(PostgresTable table) {
    // TODO: implement createAuditTrailTable
    throw UnimplementedError();
  }
}

abstract class AuditTrailDDLRepository {
  String createAuditTrailTable(PostgresTable table);
}
