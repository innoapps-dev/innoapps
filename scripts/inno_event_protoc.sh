cd ..

mkdir -p packages/inno_event/lib/src/generated

# Google Empty / FieldMask / Timestamp
protoc --dart_out=grpc:packages/inno_event/lib/src/generated -Iprotos protos/google/protobuf/empty.proto
protoc --dart_out=grpc:packages/inno_event/lib/src/generated -Iprotos protos/google/protobuf/field_mask.proto
protoc --dart_out=grpc:packages/inno_event/lib/src/generated -Iprotos protos/google/protobuf/timestamp.proto

# Inno Model
protoc --dart_out=grpc:packages/inno_event/lib/src/generated -Iprotos protos/inno/model/inno_model.proto

# Inno Event Services
protoc --dart_out=grpc:packages/inno_event/lib/src/generated -Iprotos protos/inno/api/event/inno_event.proto
protoc --dart_out=grpc:packages/inno_event/lib/src/generated -Iprotos protos/inno/api/event/inno_event_session.proto