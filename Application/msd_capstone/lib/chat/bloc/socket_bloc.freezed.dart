// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage(final ChatMessage message) = _$SendMessageImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveMessageImplCopyWith<$Res> {
  factory _$$ReceiveMessageImplCopyWith(_$ReceiveMessageImpl value,
          $Res Function(_$ReceiveMessageImpl) then) =
      __$$ReceiveMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$ReceiveMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReceiveMessageImpl>
    implements _$$ReceiveMessageImplCopyWith<$Res> {
  __$$ReceiveMessageImplCopyWithImpl(
      _$ReceiveMessageImpl _value, $Res Function(_$ReceiveMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReceiveMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$ReceiveMessageImpl implements ReceiveMessage {
  const _$ReceiveMessageImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatEvent.receiveMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      __$$ReceiveMessageImplCopyWithImpl<_$ReceiveMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return receiveMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return receiveMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (receiveMessage != null) {
      return receiveMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return receiveMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return receiveMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (receiveMessage != null) {
      return receiveMessage(this);
    }
    return orElse();
  }
}

abstract class ReceiveMessage implements ChatEvent {
  const factory ReceiveMessage(final ChatMessage message) =
      _$ReceiveMessageImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectImpl implements Connect {
  const _$ConnectImpl();

  @override
  String toString() {
    return 'ChatEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class Connect implements ChatEvent {
  const factory Connect() = _$ConnectImpl;
}

/// @nodoc
abstract class _$$DisconnectImplCopyWith<$Res> {
  factory _$$DisconnectImplCopyWith(
          _$DisconnectImpl value, $Res Function(_$DisconnectImpl) then) =
      __$$DisconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DisconnectImpl>
    implements _$$DisconnectImplCopyWith<$Res> {
  __$$DisconnectImplCopyWithImpl(
      _$DisconnectImpl _value, $Res Function(_$DisconnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisconnectImpl implements Disconnect {
  const _$DisconnectImpl();

  @override
  String toString() {
    return 'ChatEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Disconnect implements ChatEvent {
  const factory Disconnect() = _$DisconnectImpl;
}

/// @nodoc
abstract class _$$ReadMessageImplCopyWith<$Res> {
  factory _$$ReadMessageImplCopyWith(
          _$ReadMessageImpl value, $Res Function(_$ReadMessageImpl) then) =
      __$$ReadMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$ReadMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReadMessageImpl>
    implements _$$ReadMessageImplCopyWith<$Res> {
  __$$ReadMessageImplCopyWithImpl(
      _$ReadMessageImpl _value, $Res Function(_$ReadMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$ReadMessageImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadMessageImpl implements ReadMessage {
  const _$ReadMessageImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.readMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadMessageImplCopyWith<_$ReadMessageImpl> get copyWith =>
      __$$ReadMessageImplCopyWithImpl<_$ReadMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return readMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return readMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return readMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return readMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(this);
    }
    return orElse();
  }
}

abstract class ReadMessage implements ChatEvent {
  const factory ReadMessage(final String messageId) = _$ReadMessageImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$ReadMessageImplCopyWith<_$ReadMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$DeleteMessageImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements DeleteMessage {
  const _$DeleteMessageImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.deleteMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class DeleteMessage implements ChatEvent {
  const factory DeleteMessage(final String messageId) = _$DeleteMessageImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTypingImplCopyWith<$Res> {
  factory _$$StartTypingImplCopyWith(
          _$StartTypingImpl value, $Res Function(_$StartTypingImpl) then) =
      __$$StartTypingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$StartTypingImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartTypingImpl>
    implements _$$StartTypingImplCopyWith<$Res> {
  __$$StartTypingImplCopyWithImpl(
      _$StartTypingImpl _value, $Res Function(_$StartTypingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$StartTypingImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartTypingImpl implements StartTyping {
  const _$StartTypingImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatEvent.startTyping(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTypingImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTypingImplCopyWith<_$StartTypingImpl> get copyWith =>
      __$$StartTypingImplCopyWithImpl<_$StartTypingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return startTyping(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return startTyping?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (startTyping != null) {
      return startTyping(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return startTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return startTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (startTyping != null) {
      return startTyping(this);
    }
    return orElse();
  }
}

abstract class StartTyping implements ChatEvent {
  const factory StartTyping(final String recipientId) = _$StartTypingImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$StartTypingImplCopyWith<_$StartTypingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopTypingImplCopyWith<$Res> {
  factory _$$StopTypingImplCopyWith(
          _$StopTypingImpl value, $Res Function(_$StopTypingImpl) then) =
      __$$StopTypingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$StopTypingImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StopTypingImpl>
    implements _$$StopTypingImplCopyWith<$Res> {
  __$$StopTypingImplCopyWithImpl(
      _$StopTypingImpl _value, $Res Function(_$StopTypingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$StopTypingImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StopTypingImpl implements StopTyping {
  const _$StopTypingImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatEvent.stopTyping(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopTypingImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopTypingImplCopyWith<_$StopTypingImpl> get copyWith =>
      __$$StopTypingImplCopyWithImpl<_$StopTypingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return stopTyping(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return stopTyping?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (stopTyping != null) {
      return stopTyping(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return stopTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return stopTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (stopTyping != null) {
      return stopTyping(this);
    }
    return orElse();
  }
}

abstract class StopTyping implements ChatEvent {
  const factory StopTyping(final String recipientId) = _$StopTypingImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$StopTypingImplCopyWith<_$StopTypingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveMessageFromServerImplCopyWith<$Res> {
  factory _$$ReceiveMessageFromServerImplCopyWith(
          _$ReceiveMessageFromServerImpl value,
          $Res Function(_$ReceiveMessageFromServerImpl) then) =
      __$$ReceiveMessageFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$ReceiveMessageFromServerImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReceiveMessageFromServerImpl>
    implements _$$ReceiveMessageFromServerImplCopyWith<$Res> {
  __$$ReceiveMessageFromServerImplCopyWithImpl(
      _$ReceiveMessageFromServerImpl _value,
      $Res Function(_$ReceiveMessageFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReceiveMessageFromServerImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$ReceiveMessageFromServerImpl implements ReceiveMessageFromServer {
  const _$ReceiveMessageFromServerImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatEvent.receiveMessageFromServer(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveMessageFromServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveMessageFromServerImplCopyWith<_$ReceiveMessageFromServerImpl>
      get copyWith => __$$ReceiveMessageFromServerImplCopyWithImpl<
          _$ReceiveMessageFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return receiveMessageFromServer(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return receiveMessageFromServer?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (receiveMessageFromServer != null) {
      return receiveMessageFromServer(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return receiveMessageFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return receiveMessageFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (receiveMessageFromServer != null) {
      return receiveMessageFromServer(this);
    }
    return orElse();
  }
}

abstract class ReceiveMessageFromServer implements ChatEvent {
  const factory ReceiveMessageFromServer(final ChatMessage message) =
      _$ReceiveMessageFromServerImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$ReceiveMessageFromServerImplCopyWith<_$ReceiveMessageFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchConversationsImplCopyWith<$Res> {
  factory _$$FetchConversationsImplCopyWith(_$FetchConversationsImpl value,
          $Res Function(_$FetchConversationsImpl) then) =
      __$$FetchConversationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$$FetchConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchConversationsImpl>
    implements _$$FetchConversationsImplCopyWith<$Res> {
  __$$FetchConversationsImplCopyWithImpl(_$FetchConversationsImpl _value,
      $Res Function(_$FetchConversationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$FetchConversationsImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
    ));
  }
}

/// @nodoc

class _$FetchConversationsImpl implements FetchConversations {
  const _$FetchConversationsImpl(final List<Conversation> conversations)
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ChatEvent.fetchConversations(conversations: $conversations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchConversationsImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchConversationsImplCopyWith<_$FetchConversationsImpl> get copyWith =>
      __$$FetchConversationsImplCopyWithImpl<_$FetchConversationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return fetchConversations(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return fetchConversations?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (fetchConversations != null) {
      return fetchConversations(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return fetchConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return fetchConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (fetchConversations != null) {
      return fetchConversations(this);
    }
    return orElse();
  }
}

abstract class FetchConversations implements ChatEvent {
  const factory FetchConversations(final List<Conversation> conversations) =
      _$FetchConversationsImpl;

  List<Conversation> get conversations;
  @JsonKey(ignore: true)
  _$$FetchConversationsImplCopyWith<_$FetchConversationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchUsersImplCopyWith<$Res> {
  factory _$$FetchUsersImplCopyWith(
          _$FetchUsersImpl value, $Res Function(_$FetchUsersImpl) then) =
      __$$FetchUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatUser> users});
}

/// @nodoc
class __$$FetchUsersImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchUsersImpl>
    implements _$$FetchUsersImplCopyWith<$Res> {
  __$$FetchUsersImplCopyWithImpl(
      _$FetchUsersImpl _value, $Res Function(_$FetchUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$FetchUsersImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
    ));
  }
}

/// @nodoc

class _$FetchUsersImpl implements FetchUsers {
  const _$FetchUsersImpl(final List<ChatUser> users) : _users = users;

  final List<ChatUser> _users;
  @override
  List<ChatUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ChatEvent.fetchUsers(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUsersImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUsersImplCopyWith<_$FetchUsersImpl> get copyWith =>
      __$$FetchUsersImplCopyWithImpl<_$FetchUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return fetchUsers(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return fetchUsers?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class FetchUsers implements ChatEvent {
  const factory FetchUsers(final List<ChatUser> users) = _$FetchUsersImpl;

  List<ChatUser> get users;
  @JsonKey(ignore: true)
  _$$FetchUsersImplCopyWith<_$FetchUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadMessageFromServerImplCopyWith<$Res> {
  factory _$$ReadMessageFromServerImplCopyWith(
          _$ReadMessageFromServerImpl value,
          $Res Function(_$ReadMessageFromServerImpl) then) =
      __$$ReadMessageFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$ReadMessageFromServerImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReadMessageFromServerImpl>
    implements _$$ReadMessageFromServerImplCopyWith<$Res> {
  __$$ReadMessageFromServerImplCopyWithImpl(_$ReadMessageFromServerImpl _value,
      $Res Function(_$ReadMessageFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$ReadMessageFromServerImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadMessageFromServerImpl implements ReadMessageFromServer {
  const _$ReadMessageFromServerImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.readMessageFromServer(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadMessageFromServerImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadMessageFromServerImplCopyWith<_$ReadMessageFromServerImpl>
      get copyWith => __$$ReadMessageFromServerImplCopyWithImpl<
          _$ReadMessageFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return readMessageFromServer(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return readMessageFromServer?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (readMessageFromServer != null) {
      return readMessageFromServer(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return readMessageFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return readMessageFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (readMessageFromServer != null) {
      return readMessageFromServer(this);
    }
    return orElse();
  }
}

abstract class ReadMessageFromServer implements ChatEvent {
  const factory ReadMessageFromServer(final String messageId) =
      _$ReadMessageFromServerImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$ReadMessageFromServerImplCopyWith<_$ReadMessageFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypingFromServerImplCopyWith<$Res> {
  factory _$$TypingFromServerImplCopyWith(_$TypingFromServerImpl value,
          $Res Function(_$TypingFromServerImpl) then) =
      __$$TypingFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderId});
}

/// @nodoc
class __$$TypingFromServerImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$TypingFromServerImpl>
    implements _$$TypingFromServerImplCopyWith<$Res> {
  __$$TypingFromServerImplCopyWithImpl(_$TypingFromServerImpl _value,
      $Res Function(_$TypingFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
  }) {
    return _then(_$TypingFromServerImpl(
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypingFromServerImpl implements TypingFromServer {
  const _$TypingFromServerImpl(this.senderId);

  @override
  final String senderId;

  @override
  String toString() {
    return 'ChatEvent.typingFromServer(senderId: $senderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingFromServerImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingFromServerImplCopyWith<_$TypingFromServerImpl> get copyWith =>
      __$$TypingFromServerImplCopyWithImpl<_$TypingFromServerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return typingFromServer(senderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return typingFromServer?.call(senderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (typingFromServer != null) {
      return typingFromServer(senderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return typingFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return typingFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (typingFromServer != null) {
      return typingFromServer(this);
    }
    return orElse();
  }
}

abstract class TypingFromServer implements ChatEvent {
  const factory TypingFromServer(final String senderId) =
      _$TypingFromServerImpl;

  String get senderId;
  @JsonKey(ignore: true)
  _$$TypingFromServerImplCopyWith<_$TypingFromServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopTypingFromServerImplCopyWith<$Res> {
  factory _$$StopTypingFromServerImplCopyWith(_$StopTypingFromServerImpl value,
          $Res Function(_$StopTypingFromServerImpl) then) =
      __$$StopTypingFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderId});
}

/// @nodoc
class __$$StopTypingFromServerImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StopTypingFromServerImpl>
    implements _$$StopTypingFromServerImplCopyWith<$Res> {
  __$$StopTypingFromServerImplCopyWithImpl(_$StopTypingFromServerImpl _value,
      $Res Function(_$StopTypingFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
  }) {
    return _then(_$StopTypingFromServerImpl(
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StopTypingFromServerImpl implements StopTypingFromServer {
  const _$StopTypingFromServerImpl(this.senderId);

  @override
  final String senderId;

  @override
  String toString() {
    return 'ChatEvent.stopTypingFromServer(senderId: $senderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopTypingFromServerImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopTypingFromServerImplCopyWith<_$StopTypingFromServerImpl>
      get copyWith =>
          __$$StopTypingFromServerImplCopyWithImpl<_$StopTypingFromServerImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return stopTypingFromServer(senderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return stopTypingFromServer?.call(senderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (stopTypingFromServer != null) {
      return stopTypingFromServer(senderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return stopTypingFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return stopTypingFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (stopTypingFromServer != null) {
      return stopTypingFromServer(this);
    }
    return orElse();
  }
}

abstract class StopTypingFromServer implements ChatEvent {
  const factory StopTypingFromServer(final String senderId) =
      _$StopTypingFromServerImpl;

  String get senderId;
  @JsonKey(ignore: true)
  _$$StopTypingFromServerImplCopyWith<_$StopTypingFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageFromServerImplCopyWith<$Res> {
  factory _$$DeleteMessageFromServerImplCopyWith(
          _$DeleteMessageFromServerImpl value,
          $Res Function(_$DeleteMessageFromServerImpl) then) =
      __$$DeleteMessageFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$DeleteMessageFromServerImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteMessageFromServerImpl>
    implements _$$DeleteMessageFromServerImplCopyWith<$Res> {
  __$$DeleteMessageFromServerImplCopyWithImpl(
      _$DeleteMessageFromServerImpl _value,
      $Res Function(_$DeleteMessageFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$DeleteMessageFromServerImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessageFromServerImpl implements DeleteMessageFromServer {
  const _$DeleteMessageFromServerImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.deleteMessageFromServer(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageFromServerImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageFromServerImplCopyWith<_$DeleteMessageFromServerImpl>
      get copyWith => __$$DeleteMessageFromServerImplCopyWithImpl<
          _$DeleteMessageFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return deleteMessageFromServer(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return deleteMessageFromServer?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (deleteMessageFromServer != null) {
      return deleteMessageFromServer(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return deleteMessageFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return deleteMessageFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (deleteMessageFromServer != null) {
      return deleteMessageFromServer(this);
    }
    return orElse();
  }
}

abstract class DeleteMessageFromServer implements ChatEvent {
  const factory DeleteMessageFromServer(final String messageId) =
      _$DeleteMessageFromServerImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$DeleteMessageFromServerImplCopyWith<_$DeleteMessageFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteConversationFromServerImplCopyWith<$Res> {
  factory _$$DeleteConversationFromServerImplCopyWith(
          _$DeleteConversationFromServerImpl value,
          $Res Function(_$DeleteConversationFromServerImpl) then) =
      __$$DeleteConversationFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$DeleteConversationFromServerImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteConversationFromServerImpl>
    implements _$$DeleteConversationFromServerImplCopyWith<$Res> {
  __$$DeleteConversationFromServerImplCopyWithImpl(
      _$DeleteConversationFromServerImpl _value,
      $Res Function(_$DeleteConversationFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$DeleteConversationFromServerImpl(
      null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteConversationFromServerImpl
    implements DeleteConversationFromServer {
  const _$DeleteConversationFromServerImpl(this.conversationId);

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatEvent.deleteConversationFromServer(conversationId: $conversationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteConversationFromServerImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteConversationFromServerImplCopyWith<
          _$DeleteConversationFromServerImpl>
      get copyWith => __$$DeleteConversationFromServerImplCopyWithImpl<
          _$DeleteConversationFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return deleteConversationFromServer(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return deleteConversationFromServer?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (deleteConversationFromServer != null) {
      return deleteConversationFromServer(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return deleteConversationFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return deleteConversationFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (deleteConversationFromServer != null) {
      return deleteConversationFromServer(this);
    }
    return orElse();
  }
}

abstract class DeleteConversationFromServer implements ChatEvent {
  const factory DeleteConversationFromServer(final String conversationId) =
      _$DeleteConversationFromServerImpl;

  String get conversationId;
  @JsonKey(ignore: true)
  _$$DeleteConversationFromServerImplCopyWith<
          _$DeleteConversationFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorFromServerImplCopyWith<$Res> {
  factory _$$ErrorFromServerImplCopyWith(_$ErrorFromServerImpl value,
          $Res Function(_$ErrorFromServerImpl) then) =
      __$$ErrorFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorFromServerImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ErrorFromServerImpl>
    implements _$$ErrorFromServerImplCopyWith<$Res> {
  __$$ErrorFromServerImplCopyWithImpl(
      _$ErrorFromServerImpl _value, $Res Function(_$ErrorFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorFromServerImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFromServerImpl implements ErrorFromServer {
  const _$ErrorFromServerImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatEvent.errorFromServer(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorFromServerImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorFromServerImplCopyWith<_$ErrorFromServerImpl> get copyWith =>
      __$$ErrorFromServerImplCopyWithImpl<_$ErrorFromServerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
    required TResult Function(ChatMessage message) receiveMessageFromServer,
    required TResult Function(List<Conversation> conversations)
        fetchConversations,
    required TResult Function(List<ChatUser> users) fetchUsers,
    required TResult Function(String messageId) readMessageFromServer,
    required TResult Function(String senderId) typingFromServer,
    required TResult Function(String senderId) stopTypingFromServer,
    required TResult Function(String messageId) deleteMessageFromServer,
    required TResult Function(String conversationId)
        deleteConversationFromServer,
    required TResult Function(String error) errorFromServer,
  }) {
    return errorFromServer(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
    TResult? Function(ChatMessage message)? receiveMessageFromServer,
    TResult? Function(List<Conversation> conversations)? fetchConversations,
    TResult? Function(List<ChatUser> users)? fetchUsers,
    TResult? Function(String messageId)? readMessageFromServer,
    TResult? Function(String senderId)? typingFromServer,
    TResult? Function(String senderId)? stopTypingFromServer,
    TResult? Function(String messageId)? deleteMessageFromServer,
    TResult? Function(String conversationId)? deleteConversationFromServer,
    TResult? Function(String error)? errorFromServer,
  }) {
    return errorFromServer?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    TResult Function(ChatMessage message)? receiveMessageFromServer,
    TResult Function(List<Conversation> conversations)? fetchConversations,
    TResult Function(List<ChatUser> users)? fetchUsers,
    TResult Function(String messageId)? readMessageFromServer,
    TResult Function(String senderId)? typingFromServer,
    TResult Function(String senderId)? stopTypingFromServer,
    TResult Function(String messageId)? deleteMessageFromServer,
    TResult Function(String conversationId)? deleteConversationFromServer,
    TResult Function(String error)? errorFromServer,
    required TResult orElse(),
  }) {
    if (errorFromServer != null) {
      return errorFromServer(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
    required TResult Function(ReceiveMessageFromServer value)
        receiveMessageFromServer,
    required TResult Function(FetchConversations value) fetchConversations,
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(ReadMessageFromServer value)
        readMessageFromServer,
    required TResult Function(TypingFromServer value) typingFromServer,
    required TResult Function(StopTypingFromServer value) stopTypingFromServer,
    required TResult Function(DeleteMessageFromServer value)
        deleteMessageFromServer,
    required TResult Function(DeleteConversationFromServer value)
        deleteConversationFromServer,
    required TResult Function(ErrorFromServer value) errorFromServer,
  }) {
    return errorFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
    TResult? Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult? Function(FetchConversations value)? fetchConversations,
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult? Function(TypingFromServer value)? typingFromServer,
    TResult? Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult? Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult? Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult? Function(ErrorFromServer value)? errorFromServer,
  }) {
    return errorFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    TResult Function(ReceiveMessageFromServer value)? receiveMessageFromServer,
    TResult Function(FetchConversations value)? fetchConversations,
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(ReadMessageFromServer value)? readMessageFromServer,
    TResult Function(TypingFromServer value)? typingFromServer,
    TResult Function(StopTypingFromServer value)? stopTypingFromServer,
    TResult Function(DeleteMessageFromServer value)? deleteMessageFromServer,
    TResult Function(DeleteConversationFromServer value)?
        deleteConversationFromServer,
    TResult Function(ErrorFromServer value)? errorFromServer,
    required TResult orElse(),
  }) {
    if (errorFromServer != null) {
      return errorFromServer(this);
    }
    return orElse();
  }
}

abstract class ErrorFromServer implements ChatEvent {
  const factory ErrorFromServer(final String error) = _$ErrorFromServerImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorFromServerImplCopyWith<_$ErrorFromServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedImpl implements Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'ChatState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements ChatState {
  const factory Connected() = _$ConnectedImpl;
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
          _$DisconnectedImpl value, $Res Function(_$DisconnectedImpl) then) =
      __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
      _$DisconnectedImpl _value, $Res Function(_$DisconnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisconnectedImpl implements Disconnected {
  const _$DisconnectedImpl();

  @override
  String toString() {
    return 'ChatState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements ChatState {
  const factory Disconnected() = _$DisconnectedImpl;
}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res> {
  factory _$$MessageSentImplCopyWith(
          _$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) =
      __$$MessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageSentImpl>
    implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(
      _$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageSentImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$MessageSentImpl implements MessageSent {
  const _$MessageSentImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatState.messageSent(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      __$$MessageSentImplCopyWithImpl<_$MessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return messageSent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return messageSent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements ChatState {
  const factory MessageSent(final ChatMessage message) = _$MessageSentImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(_$MessageReceivedImpl value,
          $Res Function(_$MessageReceivedImpl) then) =
      __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
      _$MessageReceivedImpl _value, $Res Function(_$MessageReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageReceivedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$MessageReceivedImpl implements MessageReceived {
  const _$MessageReceivedImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatState.messageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class MessageReceived implements ChatState {
  const factory MessageReceived(final ChatMessage message) =
      _$MessageReceivedImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReadImplCopyWith<$Res> {
  factory _$$MessageReadImplCopyWith(
          _$MessageReadImpl value, $Res Function(_$MessageReadImpl) then) =
      __$$MessageReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MessageReadImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageReadImpl>
    implements _$$MessageReadImplCopyWith<$Res> {
  __$$MessageReadImplCopyWithImpl(
      _$MessageReadImpl _value, $Res Function(_$MessageReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MessageReadImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageReadImpl implements MessageRead {
  const _$MessageReadImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatState.messageRead(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReadImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReadImplCopyWith<_$MessageReadImpl> get copyWith =>
      __$$MessageReadImplCopyWithImpl<_$MessageReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return messageRead(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return messageRead?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return messageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class MessageRead implements ChatState {
  const factory MessageRead(final String messageId) = _$MessageReadImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$MessageReadImplCopyWith<_$MessageReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageDeletedImplCopyWith<$Res> {
  factory _$$MessageDeletedImplCopyWith(_$MessageDeletedImpl value,
          $Res Function(_$MessageDeletedImpl) then) =
      __$$MessageDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MessageDeletedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageDeletedImpl>
    implements _$$MessageDeletedImplCopyWith<$Res> {
  __$$MessageDeletedImplCopyWithImpl(
      _$MessageDeletedImpl _value, $Res Function(_$MessageDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MessageDeletedImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageDeletedImpl implements MessageDeleted {
  const _$MessageDeletedImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatState.messageDeleted(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDeletedImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDeletedImplCopyWith<_$MessageDeletedImpl> get copyWith =>
      __$$MessageDeletedImplCopyWithImpl<_$MessageDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return messageDeleted(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return messageDeleted?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return messageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return messageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(this);
    }
    return orElse();
  }
}

abstract class MessageDeleted implements ChatState {
  const factory MessageDeleted(final String messageId) = _$MessageDeletedImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$MessageDeletedImplCopyWith<_$MessageDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypingStartedImplCopyWith<$Res> {
  factory _$$TypingStartedImplCopyWith(
          _$TypingStartedImpl value, $Res Function(_$TypingStartedImpl) then) =
      __$$TypingStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$TypingStartedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$TypingStartedImpl>
    implements _$$TypingStartedImplCopyWith<$Res> {
  __$$TypingStartedImplCopyWithImpl(
      _$TypingStartedImpl _value, $Res Function(_$TypingStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$TypingStartedImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypingStartedImpl implements TypingStarted {
  const _$TypingStartedImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatState.typingStarted(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingStartedImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingStartedImplCopyWith<_$TypingStartedImpl> get copyWith =>
      __$$TypingStartedImplCopyWithImpl<_$TypingStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return typingStarted(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return typingStarted?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStarted != null) {
      return typingStarted(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return typingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return typingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStarted != null) {
      return typingStarted(this);
    }
    return orElse();
  }
}

abstract class TypingStarted implements ChatState {
  const factory TypingStarted(final String recipientId) = _$TypingStartedImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$TypingStartedImplCopyWith<_$TypingStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypingStoppedImplCopyWith<$Res> {
  factory _$$TypingStoppedImplCopyWith(
          _$TypingStoppedImpl value, $Res Function(_$TypingStoppedImpl) then) =
      __$$TypingStoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$TypingStoppedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$TypingStoppedImpl>
    implements _$$TypingStoppedImplCopyWith<$Res> {
  __$$TypingStoppedImplCopyWithImpl(
      _$TypingStoppedImpl _value, $Res Function(_$TypingStoppedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$TypingStoppedImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypingStoppedImpl implements TypingStopped {
  const _$TypingStoppedImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatState.typingStopped(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingStoppedImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingStoppedImplCopyWith<_$TypingStoppedImpl> get copyWith =>
      __$$TypingStoppedImplCopyWithImpl<_$TypingStoppedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return typingStopped(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return typingStopped?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStopped != null) {
      return typingStopped(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return typingStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return typingStopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStopped != null) {
      return typingStopped(this);
    }
    return orElse();
  }
}

abstract class TypingStopped implements ChatState {
  const factory TypingStopped(final String recipientId) = _$TypingStoppedImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$TypingStoppedImplCopyWith<_$TypingStoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedFromServerImplCopyWith<$Res> {
  factory _$$MessageReceivedFromServerImplCopyWith(
          _$MessageReceivedFromServerImpl value,
          $Res Function(_$MessageReceivedFromServerImpl) then) =
      __$$MessageReceivedFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$MessageReceivedFromServerImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageReceivedFromServerImpl>
    implements _$$MessageReceivedFromServerImplCopyWith<$Res> {
  __$$MessageReceivedFromServerImplCopyWithImpl(
      _$MessageReceivedFromServerImpl _value,
      $Res Function(_$MessageReceivedFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageReceivedFromServerImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$MessageReceivedFromServerImpl implements MessageReceivedFromServer {
  const _$MessageReceivedFromServerImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatState.messageReceivedFromServer(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedFromServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedFromServerImplCopyWith<_$MessageReceivedFromServerImpl>
      get copyWith => __$$MessageReceivedFromServerImplCopyWithImpl<
          _$MessageReceivedFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return messageReceivedFromServer(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return messageReceivedFromServer?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageReceivedFromServer != null) {
      return messageReceivedFromServer(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return messageReceivedFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return messageReceivedFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageReceivedFromServer != null) {
      return messageReceivedFromServer(this);
    }
    return orElse();
  }
}

abstract class MessageReceivedFromServer implements ChatState {
  const factory MessageReceivedFromServer(final ChatMessage message) =
      _$MessageReceivedFromServerImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$MessageReceivedFromServerImplCopyWith<_$MessageReceivedFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConversationsFetchedImplCopyWith<$Res> {
  factory _$$ConversationsFetchedImplCopyWith(_$ConversationsFetchedImpl value,
          $Res Function(_$ConversationsFetchedImpl) then) =
      __$$ConversationsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$$ConversationsFetchedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ConversationsFetchedImpl>
    implements _$$ConversationsFetchedImplCopyWith<$Res> {
  __$$ConversationsFetchedImplCopyWithImpl(_$ConversationsFetchedImpl _value,
      $Res Function(_$ConversationsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$ConversationsFetchedImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
    ));
  }
}

/// @nodoc

class _$ConversationsFetchedImpl implements ConversationsFetched {
  const _$ConversationsFetchedImpl(final List<Conversation> conversations)
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ChatState.conversationsFetched(conversations: $conversations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationsFetchedImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationsFetchedImplCopyWith<_$ConversationsFetchedImpl>
      get copyWith =>
          __$$ConversationsFetchedImplCopyWithImpl<_$ConversationsFetchedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return conversationsFetched(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return conversationsFetched?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (conversationsFetched != null) {
      return conversationsFetched(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return conversationsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return conversationsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (conversationsFetched != null) {
      return conversationsFetched(this);
    }
    return orElse();
  }
}

abstract class ConversationsFetched implements ChatState {
  const factory ConversationsFetched(final List<Conversation> conversations) =
      _$ConversationsFetchedImpl;

  List<Conversation> get conversations;
  @JsonKey(ignore: true)
  _$$ConversationsFetchedImplCopyWith<_$ConversationsFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersFetchedImplCopyWith<$Res> {
  factory _$$UsersFetchedImplCopyWith(
          _$UsersFetchedImpl value, $Res Function(_$UsersFetchedImpl) then) =
      __$$UsersFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatUser> users});
}

/// @nodoc
class __$$UsersFetchedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$UsersFetchedImpl>
    implements _$$UsersFetchedImplCopyWith<$Res> {
  __$$UsersFetchedImplCopyWithImpl(
      _$UsersFetchedImpl _value, $Res Function(_$UsersFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UsersFetchedImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
    ));
  }
}

/// @nodoc

class _$UsersFetchedImpl implements UsersFetched {
  const _$UsersFetchedImpl(final List<ChatUser> users) : _users = users;

  final List<ChatUser> _users;
  @override
  List<ChatUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ChatState.usersFetched(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersFetchedImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersFetchedImplCopyWith<_$UsersFetchedImpl> get copyWith =>
      __$$UsersFetchedImplCopyWithImpl<_$UsersFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return usersFetched(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return usersFetched?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (usersFetched != null) {
      return usersFetched(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return usersFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return usersFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (usersFetched != null) {
      return usersFetched(this);
    }
    return orElse();
  }
}

abstract class UsersFetched implements ChatState {
  const factory UsersFetched(final List<ChatUser> users) = _$UsersFetchedImpl;

  List<ChatUser> get users;
  @JsonKey(ignore: true)
  _$$UsersFetchedImplCopyWith<_$UsersFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReadFromServerImplCopyWith<$Res> {
  factory _$$MessageReadFromServerImplCopyWith(
          _$MessageReadFromServerImpl value,
          $Res Function(_$MessageReadFromServerImpl) then) =
      __$$MessageReadFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MessageReadFromServerImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageReadFromServerImpl>
    implements _$$MessageReadFromServerImplCopyWith<$Res> {
  __$$MessageReadFromServerImplCopyWithImpl(_$MessageReadFromServerImpl _value,
      $Res Function(_$MessageReadFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MessageReadFromServerImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageReadFromServerImpl implements MessageReadFromServer {
  const _$MessageReadFromServerImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatState.messageReadFromServer(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReadFromServerImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReadFromServerImplCopyWith<_$MessageReadFromServerImpl>
      get copyWith => __$$MessageReadFromServerImplCopyWithImpl<
          _$MessageReadFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return messageReadFromServer(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return messageReadFromServer?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageReadFromServer != null) {
      return messageReadFromServer(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return messageReadFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return messageReadFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageReadFromServer != null) {
      return messageReadFromServer(this);
    }
    return orElse();
  }
}

abstract class MessageReadFromServer implements ChatState {
  const factory MessageReadFromServer(final String messageId) =
      _$MessageReadFromServerImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$MessageReadFromServerImplCopyWith<_$MessageReadFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypingStartedFromServerImplCopyWith<$Res> {
  factory _$$TypingStartedFromServerImplCopyWith(
          _$TypingStartedFromServerImpl value,
          $Res Function(_$TypingStartedFromServerImpl) then) =
      __$$TypingStartedFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderId});
}

/// @nodoc
class __$$TypingStartedFromServerImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$TypingStartedFromServerImpl>
    implements _$$TypingStartedFromServerImplCopyWith<$Res> {
  __$$TypingStartedFromServerImplCopyWithImpl(
      _$TypingStartedFromServerImpl _value,
      $Res Function(_$TypingStartedFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
  }) {
    return _then(_$TypingStartedFromServerImpl(
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypingStartedFromServerImpl implements TypingStartedFromServer {
  const _$TypingStartedFromServerImpl(this.senderId);

  @override
  final String senderId;

  @override
  String toString() {
    return 'ChatState.typingStartedFromServer(senderId: $senderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingStartedFromServerImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingStartedFromServerImplCopyWith<_$TypingStartedFromServerImpl>
      get copyWith => __$$TypingStartedFromServerImplCopyWithImpl<
          _$TypingStartedFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return typingStartedFromServer(senderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return typingStartedFromServer?.call(senderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStartedFromServer != null) {
      return typingStartedFromServer(senderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return typingStartedFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return typingStartedFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStartedFromServer != null) {
      return typingStartedFromServer(this);
    }
    return orElse();
  }
}

abstract class TypingStartedFromServer implements ChatState {
  const factory TypingStartedFromServer(final String senderId) =
      _$TypingStartedFromServerImpl;

  String get senderId;
  @JsonKey(ignore: true)
  _$$TypingStartedFromServerImplCopyWith<_$TypingStartedFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypingStoppedFromServerImplCopyWith<$Res> {
  factory _$$TypingStoppedFromServerImplCopyWith(
          _$TypingStoppedFromServerImpl value,
          $Res Function(_$TypingStoppedFromServerImpl) then) =
      __$$TypingStoppedFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderId});
}

/// @nodoc
class __$$TypingStoppedFromServerImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$TypingStoppedFromServerImpl>
    implements _$$TypingStoppedFromServerImplCopyWith<$Res> {
  __$$TypingStoppedFromServerImplCopyWithImpl(
      _$TypingStoppedFromServerImpl _value,
      $Res Function(_$TypingStoppedFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
  }) {
    return _then(_$TypingStoppedFromServerImpl(
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypingStoppedFromServerImpl implements TypingStoppedFromServer {
  const _$TypingStoppedFromServerImpl(this.senderId);

  @override
  final String senderId;

  @override
  String toString() {
    return 'ChatState.typingStoppedFromServer(senderId: $senderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingStoppedFromServerImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingStoppedFromServerImplCopyWith<_$TypingStoppedFromServerImpl>
      get copyWith => __$$TypingStoppedFromServerImplCopyWithImpl<
          _$TypingStoppedFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return typingStoppedFromServer(senderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return typingStoppedFromServer?.call(senderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStoppedFromServer != null) {
      return typingStoppedFromServer(senderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return typingStoppedFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return typingStoppedFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (typingStoppedFromServer != null) {
      return typingStoppedFromServer(this);
    }
    return orElse();
  }
}

abstract class TypingStoppedFromServer implements ChatState {
  const factory TypingStoppedFromServer(final String senderId) =
      _$TypingStoppedFromServerImpl;

  String get senderId;
  @JsonKey(ignore: true)
  _$$TypingStoppedFromServerImplCopyWith<_$TypingStoppedFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageDeletedFromServerImplCopyWith<$Res> {
  factory _$$MessageDeletedFromServerImplCopyWith(
          _$MessageDeletedFromServerImpl value,
          $Res Function(_$MessageDeletedFromServerImpl) then) =
      __$$MessageDeletedFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MessageDeletedFromServerImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageDeletedFromServerImpl>
    implements _$$MessageDeletedFromServerImplCopyWith<$Res> {
  __$$MessageDeletedFromServerImplCopyWithImpl(
      _$MessageDeletedFromServerImpl _value,
      $Res Function(_$MessageDeletedFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MessageDeletedFromServerImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageDeletedFromServerImpl implements MessageDeletedFromServer {
  const _$MessageDeletedFromServerImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatState.messageDeletedFromServer(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDeletedFromServerImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDeletedFromServerImplCopyWith<_$MessageDeletedFromServerImpl>
      get copyWith => __$$MessageDeletedFromServerImplCopyWithImpl<
          _$MessageDeletedFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return messageDeletedFromServer(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return messageDeletedFromServer?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageDeletedFromServer != null) {
      return messageDeletedFromServer(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return messageDeletedFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return messageDeletedFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (messageDeletedFromServer != null) {
      return messageDeletedFromServer(this);
    }
    return orElse();
  }
}

abstract class MessageDeletedFromServer implements ChatState {
  const factory MessageDeletedFromServer(final String messageId) =
      _$MessageDeletedFromServerImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$MessageDeletedFromServerImplCopyWith<_$MessageDeletedFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConversationDeletedFromServerImplCopyWith<$Res> {
  factory _$$ConversationDeletedFromServerImplCopyWith(
          _$ConversationDeletedFromServerImpl value,
          $Res Function(_$ConversationDeletedFromServerImpl) then) =
      __$$ConversationDeletedFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$ConversationDeletedFromServerImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ConversationDeletedFromServerImpl>
    implements _$$ConversationDeletedFromServerImplCopyWith<$Res> {
  __$$ConversationDeletedFromServerImplCopyWithImpl(
      _$ConversationDeletedFromServerImpl _value,
      $Res Function(_$ConversationDeletedFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$ConversationDeletedFromServerImpl(
      null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConversationDeletedFromServerImpl
    implements ConversationDeletedFromServer {
  const _$ConversationDeletedFromServerImpl(this.conversationId);

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatState.conversationDeletedFromServer(conversationId: $conversationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDeletedFromServerImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDeletedFromServerImplCopyWith<
          _$ConversationDeletedFromServerImpl>
      get copyWith => __$$ConversationDeletedFromServerImplCopyWithImpl<
          _$ConversationDeletedFromServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return conversationDeletedFromServer(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return conversationDeletedFromServer?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (conversationDeletedFromServer != null) {
      return conversationDeletedFromServer(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return conversationDeletedFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return conversationDeletedFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (conversationDeletedFromServer != null) {
      return conversationDeletedFromServer(this);
    }
    return orElse();
  }
}

abstract class ConversationDeletedFromServer implements ChatState {
  const factory ConversationDeletedFromServer(final String conversationId) =
      _$ConversationDeletedFromServerImpl;

  String get conversationId;
  @JsonKey(ignore: true)
  _$$ConversationDeletedFromServerImplCopyWith<
          _$ConversationDeletedFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateFromServerImplCopyWith<$Res> {
  factory _$$ErrorStateFromServerImplCopyWith(_$ErrorStateFromServerImpl value,
          $Res Function(_$ErrorStateFromServerImpl) then) =
      __$$ErrorStateFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateFromServerImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorStateFromServerImpl>
    implements _$$ErrorStateFromServerImplCopyWith<$Res> {
  __$$ErrorStateFromServerImplCopyWithImpl(_$ErrorStateFromServerImpl _value,
      $Res Function(_$ErrorStateFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorStateFromServerImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateFromServerImpl implements ErrorStateFromServer {
  const _$ErrorStateFromServerImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState.errorStateFromServer(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateFromServerImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateFromServerImplCopyWith<_$ErrorStateFromServerImpl>
      get copyWith =>
          __$$ErrorStateFromServerImplCopyWithImpl<_$ErrorStateFromServerImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
    required TResult Function(ChatMessage message) messageReceivedFromServer,
    required TResult Function(List<Conversation> conversations)
        conversationsFetched,
    required TResult Function(List<ChatUser> users) usersFetched,
    required TResult Function(String messageId) messageReadFromServer,
    required TResult Function(String senderId) typingStartedFromServer,
    required TResult Function(String senderId) typingStoppedFromServer,
    required TResult Function(String messageId) messageDeletedFromServer,
    required TResult Function(String conversationId)
        conversationDeletedFromServer,
    required TResult Function(String error) errorStateFromServer,
  }) {
    return errorStateFromServer(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
    TResult? Function(ChatMessage message)? messageReceivedFromServer,
    TResult? Function(List<Conversation> conversations)? conversationsFetched,
    TResult? Function(List<ChatUser> users)? usersFetched,
    TResult? Function(String messageId)? messageReadFromServer,
    TResult? Function(String senderId)? typingStartedFromServer,
    TResult? Function(String senderId)? typingStoppedFromServer,
    TResult? Function(String messageId)? messageDeletedFromServer,
    TResult? Function(String conversationId)? conversationDeletedFromServer,
    TResult? Function(String error)? errorStateFromServer,
  }) {
    return errorStateFromServer?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    TResult Function(ChatMessage message)? messageReceivedFromServer,
    TResult Function(List<Conversation> conversations)? conversationsFetched,
    TResult Function(List<ChatUser> users)? usersFetched,
    TResult Function(String messageId)? messageReadFromServer,
    TResult Function(String senderId)? typingStartedFromServer,
    TResult Function(String senderId)? typingStoppedFromServer,
    TResult Function(String messageId)? messageDeletedFromServer,
    TResult Function(String conversationId)? conversationDeletedFromServer,
    TResult Function(String error)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (errorStateFromServer != null) {
      return errorStateFromServer(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
    required TResult Function(MessageReceivedFromServer value)
        messageReceivedFromServer,
    required TResult Function(ConversationsFetched value) conversationsFetched,
    required TResult Function(UsersFetched value) usersFetched,
    required TResult Function(MessageReadFromServer value)
        messageReadFromServer,
    required TResult Function(TypingStartedFromServer value)
        typingStartedFromServer,
    required TResult Function(TypingStoppedFromServer value)
        typingStoppedFromServer,
    required TResult Function(MessageDeletedFromServer value)
        messageDeletedFromServer,
    required TResult Function(ConversationDeletedFromServer value)
        conversationDeletedFromServer,
    required TResult Function(ErrorStateFromServer value) errorStateFromServer,
  }) {
    return errorStateFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
    TResult? Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult? Function(ConversationsFetched value)? conversationsFetched,
    TResult? Function(UsersFetched value)? usersFetched,
    TResult? Function(MessageReadFromServer value)? messageReadFromServer,
    TResult? Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult? Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult? Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult? Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult? Function(ErrorStateFromServer value)? errorStateFromServer,
  }) {
    return errorStateFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    TResult Function(MessageReceivedFromServer value)?
        messageReceivedFromServer,
    TResult Function(ConversationsFetched value)? conversationsFetched,
    TResult Function(UsersFetched value)? usersFetched,
    TResult Function(MessageReadFromServer value)? messageReadFromServer,
    TResult Function(TypingStartedFromServer value)? typingStartedFromServer,
    TResult Function(TypingStoppedFromServer value)? typingStoppedFromServer,
    TResult Function(MessageDeletedFromServer value)? messageDeletedFromServer,
    TResult Function(ConversationDeletedFromServer value)?
        conversationDeletedFromServer,
    TResult Function(ErrorStateFromServer value)? errorStateFromServer,
    required TResult orElse(),
  }) {
    if (errorStateFromServer != null) {
      return errorStateFromServer(this);
    }
    return orElse();
  }
}

abstract class ErrorStateFromServer implements ChatState {
  const factory ErrorStateFromServer(final String error) =
      _$ErrorStateFromServerImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateFromServerImplCopyWith<_$ErrorStateFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
