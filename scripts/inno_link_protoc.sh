cd ..

# Google Empty / FieldMask / Timestamp
protoc --dart_out=grpc:packages/inno_link/lib/src/generated -Iprotos protos/google/protobuf/empty.proto
protoc --dart_out=grpc:packages/inno_link/lib/src/generated -Iprotos protos/google/protobuf/field_mask.proto
protoc --dart_out=grpc:packages/inno_link/lib/src/generated -Iprotos protos/google/protobuf/timestamp.proto

# Inno Model
protoc --dart_out=grpc:packages/inno_link/lib/src/generated -Iprotos protos/inno/model/inno_model.proto

# Inno Link Services
protoc --dart_out=grpc:packages/inno_link/lib/src/generated -Iprotos protos/inno/api/link/inno_link.proto