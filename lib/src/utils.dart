class AgoraRtmMessage {
  String text;
  int ts;
  bool offline;

  AgoraRtmMessage(this.text, this.ts, this.offline);

  AgoraRtmMessage.fromText(String text) : text = text;

  AgoraRtmMessage.fromJson(Map<dynamic, dynamic> json)
      : text = json['text'],
        ts = json['ts'],
        offline = json['offline'];

  Map<String, dynamic> toJson() => {'text': text, 'ts': ts, 'offline': offline};

  @override
  String toString() {
    return "{text: $text, ts: $ts, offline: $offline}";
  }
}

class AgoraRtmImageMessage {
  String text;
  int ts;
  bool offline;
  int size;
  String mediaId;
  dynamic thumbnail;
  String fileName;
  int width;
  int height;
  int thumbnailWidth;
  int thumbnailHeight;

  AgoraRtmImageMessage.fromJson(Map<dynamic, dynamic> json)
      : text = json['text'],
        ts = json['ts'],
        offline = json['offline'],
        size = json['size'],
        thumbnail = json['thumbnail'],
        fileName = json['fileName'],
        width = json['width'],
        height = json['height'],
        thumbnailWidth = json['thumbnailWidth'],
        thumbnailHeight = json['thumbnailHeight'];
}

class AgoraRtmFileMessage {
  String text;
  int ts;
  bool offline;
  int size;
  String mediaId;
  dynamic thumbnail;
  String fileName;

  AgoraRtmFileMessage.fromJson(Map<dynamic, dynamic> json)
      : text = json['text'],
        ts = json['ts'],
        offline = json['offline'],
        size = json['size'],
        thumbnail = json['thumbnail'],
        fileName = json['fileName'];
}

class AgoraRtmMediaOperationProgress {
  int currentSize;
  int totalSize;

  AgoraRtmMediaOperationProgress(this.currentSize, this.totalSize);

  AgoraRtmMediaOperationProgress.fromJson(Map<dynamic, dynamic> json)
      : currentSize = json['currentSize'],
        totalSize = json['totalSize'];

  Map<String, dynamic> toJson() =>
      {'currentSize': currentSize, 'totalSize': totalSize};

  @override
  String toString() {
    return "{currentSize: $currentSize, totalSize: $totalSize}";
  }
}

class AgoraRtmMember {
  String userId;
  String channelId;

  AgoraRtmMember(this.userId, this.channelId);

  AgoraRtmMember.fromJson(Map<dynamic, dynamic> json)
      : userId = json['userId'],
        channelId = json['channelId'];

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'channelId': channelId,
      };

  @override
  String toString() {
    return "{uid: $userId, cid: $channelId}";
  }
}

class AgoraRtmChannelAttribute {
  String key;
  String value;
  String userId;
  int updateTs;

  AgoraRtmChannelAttribute(this.key, this.value, {this.userId, this.updateTs});

  AgoraRtmChannelAttribute.fromJson(Map<dynamic, dynamic> json)
      : key = json['key'],
        value = json['value'],
        userId = json['userId'],
        updateTs = json['updateTs'];

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value,
        'userId': userId,
        'updateTs': updateTs,
      };

  @override
  String toString() {
    return "{key: $key, value: $value, userId: $userId, updateTs: $updateTs}";
  }
}

class AgoraRtmLocalInvitation {
  String calleeId;
  String content;
  String response;
  String channelId;
  int state;

  AgoraRtmLocalInvitation(
      this.calleeId, this.content, this.response, this.channelId, this.state);

  AgoraRtmLocalInvitation.fromJson(Map<dynamic, dynamic> json)
      : calleeId = json['calleeId'],
        content = json['content'],
        response = json['response'],
        channelId = json['channelId'],
        state = json['state'];

  Map<String, dynamic> toJson() => {
        'calleeId': calleeId,
        'content': content,
        'response': response,
        'channelId': channelId,
        'state': state,
      };

  @override
  String toString() {
    return "{calleeId: $calleeId, content: $content, response: $response, channelId: $channelId, state: $state}";
  }
}

class AgoraRtmRemoteInvitation {
  String callerId;
  String content;
  String response;
  String channelId;
  int state;

  AgoraRtmRemoteInvitation(
      this.callerId, this.content, this.response, this.channelId, this.state);

  AgoraRtmRemoteInvitation.fromJson(Map<dynamic, dynamic> json)
      : callerId = json['callerId'],
        content = json['content'],
        response = json['response'],
        channelId = json['channelId'],
        state = json['state'];

  Map<String, dynamic> toJson() => {
        'callerId': callerId,
        'content': content,
        'response': response,
        'channelId': channelId,
        'state': state,
      };

  @override
  String toString() {
    return "{callerId: $callerId, content: $content, response: $response, channelId: $channelId, state: $state}";
  }
}
