cd ..

mkdir -p packages/inno_conference/lib/src/generated

# Google Empty / FieldMask / Timestamp
protoc --dart_out=grpc:packages/inno_conference/lib/src/generated -Iprotos protos/google/protobuf/empty.proto
protoc --dart_out=grpc:packages/inno_conference/lib/src/generated -Iprotos protos/google/protobuf/field_mask.proto
protoc --dart_out=grpc:packages/inno_conference/lib/src/generated -Iprotos protos/google/protobuf/timestamp.proto

# Inno Model
protoc --dart_out=grpc:packages/inno_conference/lib/src/generated -Iprotos protos/inno/model/inno_model.proto

# Inno Conference Services
protoc --dart_out=grpc:packages/inno_conference/lib/src/generated -Iprotos protos/inno/api/conference/inno_conference_field.proto
protoc --dart_out=grpc:packages/inno_conference/lib/src/generated -Iprotos protos/inno/api/conference/inno_conference_provider.proto
protoc --dart_out=grpc:packages/inno_conference/lib/src/generated -Iprotos protos/inno/api/conference/inno_conference.proto